module VSphereCloud
  class ClusterConfig

    attr_reader :name

    HOST_GROUP_ATTR       = ['host_group']
    HOST_GROUP_NAME_ATTR  = HOST_GROUP_ATTR + ['name']
    HOST_GROUP_RULE_ATTR  = HOST_GROUP_ATTR + ['drs_rule']

    def initialize(name, config_hash)
      @name = name
      @config = config_hash
    end

    def host_group_name; @config.dig(*HOST_GROUP_NAME_ATTR); end

    def host_group_drs_rule; @config.dig(*HOST_GROUP_RULE_ATTR); end

    def resource_pool; @config['resource_pool']; end
  end
end
