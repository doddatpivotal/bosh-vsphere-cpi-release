=begin
#NSX-T Manager API

#VMware NSX-T Manager REST API

OpenAPI spec version: 2.3.0.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'date'

module NSXT
  # Neighbor properties
  class NeighborProperties
    # System name
    attr_accessor :system_name

    # System description
    attr_accessor :system_desc

    # System port number
    attr_accessor :system_port_number

    # Interface name
    attr_accessor :name

    # Object identifier
    attr_accessor :oid

    # Management address
    attr_accessor :mgmt_addr

    # Capabilities
    attr_accessor :capabilities

    # True if currently in aggregation
    attr_accessor :link_aggregation_status

    # Interface index
    attr_accessor :ifindex

    # Interface MAC address
    attr_accessor :mac

    # Aggregation Capability
    attr_accessor :link_aggregation_capable

    # Port description
    attr_accessor :port_desc

    # Enabled capabilities
    attr_accessor :enabled_capabilities

    # Aggregation port id
    attr_accessor :link_aggregation_port_id


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'system_name' => :'system_name',
        :'system_desc' => :'system_desc',
        :'system_port_number' => :'system_port_number',
        :'name' => :'name',
        :'oid' => :'oid',
        :'mgmt_addr' => :'mgmt_addr',
        :'capabilities' => :'capabilities',
        :'link_aggregation_status' => :'link_aggregation_status',
        :'ifindex' => :'ifindex',
        :'mac' => :'mac',
        :'link_aggregation_capable' => :'link_aggregation_capable',
        :'port_desc' => :'port_desc',
        :'enabled_capabilities' => :'enabled_capabilities',
        :'link_aggregation_port_id' => :'link_aggregation_port_id'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'system_name' => :'String',
        :'system_desc' => :'String',
        :'system_port_number' => :'Integer',
        :'name' => :'String',
        :'oid' => :'String',
        :'mgmt_addr' => :'String',
        :'capabilities' => :'String',
        :'link_aggregation_status' => :'BOOLEAN',
        :'ifindex' => :'Integer',
        :'mac' => :'String',
        :'link_aggregation_capable' => :'BOOLEAN',
        :'port_desc' => :'String',
        :'enabled_capabilities' => :'String',
        :'link_aggregation_port_id' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'system_name')
        self.system_name = attributes[:'system_name']
      end

      if attributes.has_key?(:'system_desc')
        self.system_desc = attributes[:'system_desc']
      end

      if attributes.has_key?(:'system_port_number')
        self.system_port_number = attributes[:'system_port_number']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'oid')
        self.oid = attributes[:'oid']
      end

      if attributes.has_key?(:'mgmt_addr')
        self.mgmt_addr = attributes[:'mgmt_addr']
      end

      if attributes.has_key?(:'capabilities')
        self.capabilities = attributes[:'capabilities']
      end

      if attributes.has_key?(:'link_aggregation_status')
        self.link_aggregation_status = attributes[:'link_aggregation_status']
      end

      if attributes.has_key?(:'ifindex')
        self.ifindex = attributes[:'ifindex']
      end

      if attributes.has_key?(:'mac')
        self.mac = attributes[:'mac']
      end

      if attributes.has_key?(:'link_aggregation_capable')
        self.link_aggregation_capable = attributes[:'link_aggregation_capable']
      end

      if attributes.has_key?(:'port_desc')
        self.port_desc = attributes[:'port_desc']
      end

      if attributes.has_key?(:'enabled_capabilities')
        self.enabled_capabilities = attributes[:'enabled_capabilities']
      end

      if attributes.has_key?(:'link_aggregation_port_id')
        self.link_aggregation_port_id = attributes[:'link_aggregation_port_id']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          system_name == o.system_name &&
          system_desc == o.system_desc &&
          system_port_number == o.system_port_number &&
          name == o.name &&
          oid == o.oid &&
          mgmt_addr == o.mgmt_addr &&
          capabilities == o.capabilities &&
          link_aggregation_status == o.link_aggregation_status &&
          ifindex == o.ifindex &&
          mac == o.mac &&
          link_aggregation_capable == o.link_aggregation_capable &&
          port_desc == o.port_desc &&
          enabled_capabilities == o.enabled_capabilities &&
          link_aggregation_port_id == o.link_aggregation_port_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [system_name, system_desc, system_port_number, name, oid, mgmt_addr, capabilities, link_aggregation_status, ifindex, mac, link_aggregation_capable, port_desc, enabled_capabilities, link_aggregation_port_id].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = NSXT.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end