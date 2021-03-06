require 'spec_helper'

describe VSphereCloud::DrsRule, fake_logger: true do
  subject(:drs_rule) do
    described_class.new(
      'fake-rule-name',
      client,
      datacenter_cluster,
    )
  end
  let(:client) { instance_double('VSphereCloud::VCenterClient') }
  before do
    allow(client).to receive(:service_content).and_return(service_content)
    allow(client).to receive(:wait_for_task) do |*args, &block|
      expect(block.call).to eq(task)
    end
  end

  let(:service_content) { instance_double('VimSdk::Vim::ServiceInstanceContent') }
  before do
    allow(service_content).to receive(:custom_fields_manager).and_return(custom_fields_manager)
  end
  let(:custom_fields_manager) { instance_double('VimSdk::Vim::CustomFieldsManager') }

  let(:cloud_searcher) { instance_double('VSphereCloud::CloudSearcher') }
  before do
    allow(VSphereCloud::CloudSearcher).to receive(:new).and_return(cloud_searcher)
    allow(cloud_searcher).to receive(:get_managed_objects_with_attribute).
      with(VimSdk::Vim::VirtualMachine, attribute_key, value: 'fake-rule-name').
      and_return(tagged_vms)
  end
  let(:tagged_vms) { [existing_vm_1, existing_vm_2] }
  let(:existing_vm_1) { double(:existing_vm_1, name: 'vm-1') }
  let(:existing_vm_2) { double(:existing_vm_2, name: 'vm-2') }

  let(:task) { double(:task) }

  let(:fields) { [] }

  let(:datacenter_cluster) { instance_double('VimSdk::Vim::ClusterComputeResource') }

  let(:lock_key) { 42 }
  let(:attribute_key) { 106 }

  let(:vm_attribute_manager) { VSphereCloud::VMAttributeManager }
  before do
    allow(vm_attribute_manager).to receive(:find_by_name).and_return(custom_attribute)
  end
  let(:custom_attribute) { double(:custom_attribute, key: attribute_key) }

  let(:drs_lock) { instance_double('VSphereCloud::DrsLock') }
  before { allow(VSphereCloud::DrsLock).to receive(:new).and_return(drs_lock) }

  def with_lock
    expect(drs_lock).to receive(:with_drs_lock).and_yield.ordered

    yield
  end

  describe '#add_vm' do
    subject { drs_rule.add_vm(vm) }

    let(:vm) { instance_double('VimSdk::Vim::VirtualMachine', name: 'fake-vm') }
    before do
      allow(vm).to receive(:set_custom_value).with('drs_rule', 'fake-rule-name') do
        tagged_vms << vm
      end
    end

    before do
      allow(datacenter_cluster).to receive(:configuration_ex).and_return(configuration_ex)
      allow(datacenter_cluster).to receive(:reconfigure_ex).and_return(task)
    end

    let(:configuration_ex) { double(:configuration_ex, rule: rules) }
    let(:rules) { [ double(:rule, name: 'fake-rule-name', key: rule_key) ] }
    let(:rule_key) { 33 }

    def self.it_adds_custom_attribute_to_vm
      before { allow(drs_lock).to receive(:with_drs_lock) }
      context 'when custom attribute with DRS rule name exists' do
        it 'adds custom attribute to vm' do
          expect(vm).to receive(:set_custom_value).with('drs_rule', 'fake-rule-name')
          drs_rule.add_vm(vm)
        end
      end

      context 'when custom attribute does not exist' do
        before do
          allow(vm_attribute_manager).to receive(:find_by_name).and_return(nil)
        end

        it 'creates custom attribute definition' do
          expect(vm_attribute_manager).to receive(:create).with('drs_rule')
          drs_rule.add_vm(vm)
        end

        it 'adds custom attribute to vm' do
          allow(vm_attribute_manager).to receive(:create)
          expect(vm).to receive(:set_custom_value).with('drs_rule', 'fake-rule-name')
          drs_rule.add_vm(vm)
        end
      end
    end

    context 'when rule exists' do
      it_adds_custom_attribute_to_vm

      it 'adds vm to the rule with DRS lock' do
        with_lock do
          expect(datacenter_cluster).to receive(:reconfigure_ex) do |config|
            rule_spec = config.rules_spec.first
            expect(rule_spec.operation).to eq(VimSdk::Vim::Option::ArrayUpdateSpec::Operation::EDIT)
            rule_info = rule_spec.info
            expect(rule_info).to be_an_instance_of(VimSdk::Vim::Cluster::AntiAffinityRuleSpec)
            expect(rule_info.vm).to eq([existing_vm_1, existing_vm_2, vm])
            expect(rule_info.name).to eq('fake-rule-name')
            expect(rule_info.enabled).to eq(true)
            expect(rule_info.key).to eq(rule_key)

          end.ordered.and_return(task)
        end
        drs_rule.add_vm(vm)
      end
    end

    context 'when rule does not exist' do
      let(:rules) { [] }
      let(:tagged_vms) { [existing_vm_1] }

      it_adds_custom_attribute_to_vm

      it 'creates DRS rule with all vms with that rule with DRS lock' do
        with_lock do
          expect(datacenter_cluster).to receive(:reconfigure_ex) do |config|
            rule_spec = config.rules_spec.first
            expect(rule_spec.operation).to eq(VimSdk::Vim::Option::ArrayUpdateSpec::Operation::ADD)
            rule_info = rule_spec.info
            expect(rule_info).to be_an_instance_of(VimSdk::Vim::Cluster::AntiAffinityRuleSpec)
            expect(rule_info.vm).to eq([existing_vm_1, vm])
            expect(rule_info.name).to eq('fake-rule-name')
            expect(rule_info.enabled).to eq(true)
            expect(rule_info.key).to eq(nil)

          end.ordered.and_return(task)
        end

        drs_rule.add_vm(vm)
      end
    end
  end

  describe '#add_vm_host_affinity_rule' do
    let(:vm_group_name) {'fake-vm-group'}
    let(:host_group_name) {'fake-host-group'}
    let(:configuration_ex) { double(:configuration_ex, rule: rules) }
    let(:rules) { [ double(:rule, name: 'fake-rule-name', key: rule_key) ] }
    let(:rule_key) { 33 }

    before do
      allow(datacenter_cluster).to receive(:configuration_ex).and_return(configuration_ex)
      allow(datacenter_cluster).to receive(:reconfigure_ex).and_return(task)
    end

    context 'when rule exists' do
      it 'returns the rule with DRS lock' do
        expect(drs_lock).to receive(:with_drs_lock).and_yield.ordered
        expect(datacenter_cluster).to_not receive(:reconfigure_ex)
        expect(drs_rule).to_not receive(:create_vm_host_affinity_rule)
        drs_rule.add_vm_host_affinity_rule(vm_group_name, host_group_name)
      end
    end
    context 'when rule does not exist' do
      let(:rules) { [] }
      it 'it creates DRS rule with DRS lock' do
        with_lock do
          expect(datacenter_cluster).to receive(:reconfigure_ex) do |config|
            rule_spec = config.rules_spec.first
            expect(rule_spec.operation).to eq('add')
            rule_info = rule_spec.info
            expect(rule_info).to be_an_instance_of(VimSdk::Vim::Cluster::VmHostRuleInfo)
            expect(rule_info.name).to eq('fake-rule-name')
            expect(rule_info.vm_group_name).to eq(vm_group_name)
            expect(rule_info.affine_host_group_name).to eq(host_group_name)
            expect(rule_info.enabled).to eq(true)
            expect(rule_info.key).to eq(nil)

          end.ordered.and_return(task)
          drs_rule.add_vm_host_affinity_rule(vm_group_name, host_group_name)
        end
      end
    end
  end
end
