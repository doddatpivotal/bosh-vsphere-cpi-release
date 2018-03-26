=begin
#NSX API

#VMware NSX REST API

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'date'

module NSXT

  class LbVirtualServer
    attr_accessor :_self

    # The server will populate this field when returing the resource. Ignored on PUT and POST.
    attr_accessor :_links

    attr_accessor :_schema

    # The _revision property describes the current revision of the resource. To prevent clients from overwriting each other's changes, PUT operations must include the current _revision of the resource, which clients should obtain by issuing a GET operation. If the _revision provided in a PUT request is missing or stale, the operation will be rejected.
    attr_accessor :_revision

    # Indicates system owned resource
    attr_accessor :_system_owned

    # Defaults to ID if not set
    attr_accessor :display_name

    # Description of this resource
    attr_accessor :description

    # Opaque identifiers meaningful to the API user
    attr_accessor :tags

    # ID of the user who created this resource
    attr_accessor :_create_user

    # Protection status is one of the following: PROTECTED - the client who retrieved the entity is not allowed             to modify it. NOT_PROTECTED - the client who retrieved the entity is allowed                 to modify it REQUIRE_OVERRIDE - the client who retrieved the entity is a super                    user and can modify it, but only when providing                    the request header X-Allow-Overwrite=true. UNKNOWN - the _protection field could not be determined for this           entity. 
    attr_accessor :_protection

    # Timestamp of resource creation
    attr_accessor :_create_time

    # Timestamp of last modification
    attr_accessor :_last_modified_time

    # ID of the user who last modified this resource
    attr_accessor :_last_modified_user

    # Unique identifier of this resource
    attr_accessor :id

    # The type of this resource.
    attr_accessor :resource_type

    # Assigned Internet Protocol in IP header, TCP, UDP are supported. 
    attr_accessor :ip_protocol

    # The setting is used when load balancer acts as an SSL client and establishing a connection to the backend server. 
    attr_accessor :server_ssl_profile_binding

    # whether the virtual server is enabled
    attr_accessor :enabled

    # To ensure one virtual server does not over consume resources, affecting other applications hosted on the same LBS, connections to a virtual server can be capped. If it is not specified, it means that connections are unlimited. 
    attr_accessor :max_concurrent_connections

    # The server pool(LbPool) contains backend servers. Server pool consists of one or more servers, also referred to as pool members, that are similarly configured and are running the same application. 
    attr_accessor :pool_id

    # The application profile defines the application protocol characteristics. It is used to influence how load balancing is performed. Currently, LbFastTCPProfile, LbFastUDPProfile and LbHttpProfile, etc are supported. 
    attr_accessor :application_profile_id

    # Load balancer rules allow customization of load balancing behavior using match/action rules. Currently, load balancer rules are supported for only layer 7 virtual servers with LbHttpProfile. 
    attr_accessor :rule_ids

    # To ensure one virtual server does not over consume resources, connections to a member can be rate limited. If it is not specified, it means that connection rate is unlimited. 
    attr_accessor :max_new_connection_rate

    # Persistence profile is used to allow related client connections to be sent to the same backend server. 
    attr_accessor :persistence_profile_id

    # The setting is used when load balancer acts as an SSL server and terminating the client SSL connection 
    attr_accessor :client_ssl_profile_binding

    # default pool member port when member port is not defined.
    attr_accessor :default_pool_member_port

    # virtual server IP address
    attr_accessor :ip_address

    # Port setting could be single port for both L7 mode and L4 mode. For L4 mode, a single port range is also supported. The port setting could be a single port or port range such as \"80\", \"1234-1236\". 
    attr_accessor :port

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'_self' => :'_self',
        :'_links' => :'_links',
        :'_schema' => :'_schema',
        :'_revision' => :'_revision',
        :'_system_owned' => :'_system_owned',
        :'display_name' => :'display_name',
        :'description' => :'description',
        :'tags' => :'tags',
        :'_create_user' => :'_create_user',
        :'_protection' => :'_protection',
        :'_create_time' => :'_create_time',
        :'_last_modified_time' => :'_last_modified_time',
        :'_last_modified_user' => :'_last_modified_user',
        :'id' => :'id',
        :'resource_type' => :'resource_type',
        :'ip_protocol' => :'ip_protocol',
        :'server_ssl_profile_binding' => :'server_ssl_profile_binding',
        :'enabled' => :'enabled',
        :'max_concurrent_connections' => :'max_concurrent_connections',
        :'pool_id' => :'pool_id',
        :'application_profile_id' => :'application_profile_id',
        :'rule_ids' => :'rule_ids',
        :'max_new_connection_rate' => :'max_new_connection_rate',
        :'persistence_profile_id' => :'persistence_profile_id',
        :'client_ssl_profile_binding' => :'client_ssl_profile_binding',
        :'default_pool_member_port' => :'default_pool_member_port',
        :'ip_address' => :'ip_address',
        :'port' => :'port'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'_self' => :'SelfResourceLink',
        :'_links' => :'Array<ResourceLink>',
        :'_schema' => :'String',
        :'_revision' => :'Integer',
        :'_system_owned' => :'BOOLEAN',
        :'display_name' => :'String',
        :'description' => :'String',
        :'tags' => :'Array<Tag>',
        :'_create_user' => :'String',
        :'_protection' => :'String',
        :'_create_time' => :'Integer',
        :'_last_modified_time' => :'Integer',
        :'_last_modified_user' => :'String',
        :'id' => :'String',
        :'resource_type' => :'String',
        :'ip_protocol' => :'String',
        :'server_ssl_profile_binding' => :'ServerSslProfileBinding',
        :'enabled' => :'BOOLEAN',
        :'max_concurrent_connections' => :'Integer',
        :'pool_id' => :'String',
        :'application_profile_id' => :'String',
        :'rule_ids' => :'Array<String>',
        :'max_new_connection_rate' => :'Integer',
        :'persistence_profile_id' => :'String',
        :'client_ssl_profile_binding' => :'ClientSslProfileBinding',
        :'default_pool_member_port' => :'String',
        :'ip_address' => :'String',
        :'port' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'_self')
        self._self = attributes[:'_self']
      end

      if attributes.has_key?(:'_links')
        if (value = attributes[:'_links']).is_a?(Array)
          self._links = value
        end
      end

      if attributes.has_key?(:'_schema')
        self._schema = attributes[:'_schema']
      end

      if attributes.has_key?(:'_revision')
        self._revision = attributes[:'_revision']
      end

      if attributes.has_key?(:'_system_owned')
        self._system_owned = attributes[:'_system_owned']
      end

      if attributes.has_key?(:'display_name')
        self.display_name = attributes[:'display_name']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end

      if attributes.has_key?(:'_create_user')
        self._create_user = attributes[:'_create_user']
      end

      if attributes.has_key?(:'_protection')
        self._protection = attributes[:'_protection']
      end

      if attributes.has_key?(:'_create_time')
        self._create_time = attributes[:'_create_time']
      end

      if attributes.has_key?(:'_last_modified_time')
        self._last_modified_time = attributes[:'_last_modified_time']
      end

      if attributes.has_key?(:'_last_modified_user')
        self._last_modified_user = attributes[:'_last_modified_user']
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'resource_type')
        self.resource_type = attributes[:'resource_type']
      end

      if attributes.has_key?(:'ip_protocol')
        self.ip_protocol = attributes[:'ip_protocol']
      else
        self.ip_protocol = "TCP"
      end

      if attributes.has_key?(:'server_ssl_profile_binding')
        self.server_ssl_profile_binding = attributes[:'server_ssl_profile_binding']
      end

      if attributes.has_key?(:'enabled')
        self.enabled = attributes[:'enabled']
      else
        self.enabled = true
      end

      if attributes.has_key?(:'max_concurrent_connections')
        self.max_concurrent_connections = attributes[:'max_concurrent_connections']
      end

      if attributes.has_key?(:'pool_id')
        self.pool_id = attributes[:'pool_id']
      end

      if attributes.has_key?(:'application_profile_id')
        self.application_profile_id = attributes[:'application_profile_id']
      end

      if attributes.has_key?(:'rule_ids')
        if (value = attributes[:'rule_ids']).is_a?(Array)
          self.rule_ids = value
        end
      end

      if attributes.has_key?(:'max_new_connection_rate')
        self.max_new_connection_rate = attributes[:'max_new_connection_rate']
      end

      if attributes.has_key?(:'persistence_profile_id')
        self.persistence_profile_id = attributes[:'persistence_profile_id']
      end

      if attributes.has_key?(:'client_ssl_profile_binding')
        self.client_ssl_profile_binding = attributes[:'client_ssl_profile_binding']
      end

      if attributes.has_key?(:'default_pool_member_port')
        self.default_pool_member_port = attributes[:'default_pool_member_port']
      end

      if attributes.has_key?(:'ip_address')
        self.ip_address = attributes[:'ip_address']
      end

      if attributes.has_key?(:'port')
        self.port = attributes[:'port']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@display_name.nil? && @display_name.to_s.length > 255
        invalid_properties.push("invalid value for 'display_name', the character length must be smaller than or equal to 255.")
      end

      if !@description.nil? && @description.to_s.length > 1024
        invalid_properties.push("invalid value for 'description', the character length must be smaller than or equal to 1024.")
      end

      if !@max_concurrent_connections.nil? && @max_concurrent_connections < 1
        invalid_properties.push("invalid value for 'max_concurrent_connections', must be greater than or equal to 1.")
      end

      if @application_profile_id.nil?
        invalid_properties.push("invalid value for 'application_profile_id', application_profile_id cannot be nil.")
      end

      if !@max_new_connection_rate.nil? && @max_new_connection_rate < 1
        invalid_properties.push("invalid value for 'max_new_connection_rate', must be greater than or equal to 1.")
      end

      if @ip_address.nil?
        invalid_properties.push("invalid value for 'ip_address', ip_address cannot be nil.")
      end

      if @port.nil?
        invalid_properties.push("invalid value for 'port', port cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@display_name.nil? && @display_name.to_s.length > 255
      return false if !@description.nil? && @description.to_s.length > 1024
      ip_protocol_validator = EnumAttributeValidator.new('String', ["TCP", "UDP"])
      return false unless ip_protocol_validator.valid?(@ip_protocol)
      return false if !@max_concurrent_connections.nil? && @max_concurrent_connections < 1
      return false if @application_profile_id.nil?
      return false if !@max_new_connection_rate.nil? && @max_new_connection_rate < 1
      return false if @ip_address.nil?
      return false if @port.nil?
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] display_name Value to be assigned
    def display_name=(display_name)

      if !display_name.nil? && display_name.to_s.length > 255
        fail ArgumentError, "invalid value for 'display_name', the character length must be smaller than or equal to 255."
      end

      @display_name = display_name
    end

    # Custom attribute writer method with validation
    # @param [Object] description Value to be assigned
    def description=(description)

      if !description.nil? && description.to_s.length > 1024
        fail ArgumentError, "invalid value for 'description', the character length must be smaller than or equal to 1024."
      end

      @description = description
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] ip_protocol Object to be assigned
    def ip_protocol=(ip_protocol)
      validator = EnumAttributeValidator.new('String', ["TCP", "UDP"])
      unless validator.valid?(ip_protocol)
        fail ArgumentError, "invalid value for 'ip_protocol', must be one of #{validator.allowable_values}."
      end
      @ip_protocol = ip_protocol
    end

    # Custom attribute writer method with validation
    # @param [Object] max_concurrent_connections Value to be assigned
    def max_concurrent_connections=(max_concurrent_connections)

      if !max_concurrent_connections.nil? && max_concurrent_connections < 1
        fail ArgumentError, "invalid value for 'max_concurrent_connections', must be greater than or equal to 1."
      end

      @max_concurrent_connections = max_concurrent_connections
    end

    # Custom attribute writer method with validation
    # @param [Object] max_new_connection_rate Value to be assigned
    def max_new_connection_rate=(max_new_connection_rate)

      if !max_new_connection_rate.nil? && max_new_connection_rate < 1
        fail ArgumentError, "invalid value for 'max_new_connection_rate', must be greater than or equal to 1."
      end

      @max_new_connection_rate = max_new_connection_rate
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          _self == o._self &&
          _links == o._links &&
          _schema == o._schema &&
          _revision == o._revision &&
          _system_owned == o._system_owned &&
          display_name == o.display_name &&
          description == o.description &&
          tags == o.tags &&
          _create_user == o._create_user &&
          _protection == o._protection &&
          _create_time == o._create_time &&
          _last_modified_time == o._last_modified_time &&
          _last_modified_user == o._last_modified_user &&
          id == o.id &&
          resource_type == o.resource_type &&
          ip_protocol == o.ip_protocol &&
          server_ssl_profile_binding == o.server_ssl_profile_binding &&
          enabled == o.enabled &&
          max_concurrent_connections == o.max_concurrent_connections &&
          pool_id == o.pool_id &&
          application_profile_id == o.application_profile_id &&
          rule_ids == o.rule_ids &&
          max_new_connection_rate == o.max_new_connection_rate &&
          persistence_profile_id == o.persistence_profile_id &&
          client_ssl_profile_binding == o.client_ssl_profile_binding &&
          default_pool_member_port == o.default_pool_member_port &&
          ip_address == o.ip_address &&
          port == o.port
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [_self, _links, _schema, _revision, _system_owned, display_name, description, tags, _create_user, _protection, _create_time, _last_modified_time, _last_modified_user, id, resource_type, ip_protocol, server_ssl_profile_binding, enabled, max_concurrent_connections, pool_id, application_profile_id, rule_ids, max_new_connection_rate, persistence_profile_id, client_ssl_profile_binding, default_pool_member_port, ip_address, port].hash
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
