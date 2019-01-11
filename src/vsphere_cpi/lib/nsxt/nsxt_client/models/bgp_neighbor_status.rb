=begin
#NSX-T Manager API

#VMware NSX-T Manager REST API

OpenAPI spec version: 2.3.0.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'date'

module NSXT

  class BgpNeighborStatus
    # Transport node id and name
    attr_accessor :transport_node

    # Current state of the BGP session.
    attr_accessor :connection_state

    # The IP of the BGP neighbor
    attr_accessor :neighbor_address

    # Count of messages sent to the neighbor
    attr_accessor :messages_sent

    # Count of connection drop
    attr_accessor :connection_drop_count

    # TCP port number of remote BGP Connection
    attr_accessor :remote_port

    # The Ip address of logical port
    attr_accessor :source_address

    # Count of in prefixes
    attr_accessor :total_in_prefix_count

    # Count of messages received from the neighbor
    attr_accessor :messages_received

    # Router ID of the BGP neighbor.
    attr_accessor :neighbor_router_id

    # Count of out prefixes
    attr_accessor :total_out_prefix_count

    # Logical router component(Service Router/Distributed Router) id
    attr_accessor :lr_component_id

    # Indicate current state of graceful restart where graceful_restart = true indicate graceful restart is enabled and graceful_restart = false indicate graceful restart is disabled.
    attr_accessor :graceful_restart

    # AS number of the BGP neighbor
    attr_accessor :remote_as_number

    # BGP capabilities sent to BGP neighbor.
    attr_accessor :announced_capabilities

    # TCP port number of Local BGP connection
    attr_accessor :local_port

    # Time in ms to wait for HELLO packet from BGP peer
    attr_accessor :keep_alive_interval

    # Time(in milliseconds) since connection was established.
    attr_accessor :time_since_established

    # Time in ms to wait for HELLO from BGP peer. If a HELLO packet is not seen from BGP Peer withing hold_time then BGP neighbor will be marked as down.
    attr_accessor :hold_time

    # BGP capabilities negotiated with BGP neighbor.
    attr_accessor :negotiated_capability

    # Count of connections established
    attr_accessor :established_connection_count

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
        :'transport_node' => :'transport_node',
        :'connection_state' => :'connection_state',
        :'neighbor_address' => :'neighbor_address',
        :'messages_sent' => :'messages_sent',
        :'connection_drop_count' => :'connection_drop_count',
        :'remote_port' => :'remote_port',
        :'source_address' => :'source_address',
        :'total_in_prefix_count' => :'total_in_prefix_count',
        :'messages_received' => :'messages_received',
        :'neighbor_router_id' => :'neighbor_router_id',
        :'total_out_prefix_count' => :'total_out_prefix_count',
        :'lr_component_id' => :'lr_component_id',
        :'graceful_restart' => :'graceful_restart',
        :'remote_as_number' => :'remote_as_number',
        :'announced_capabilities' => :'announced_capabilities',
        :'local_port' => :'local_port',
        :'keep_alive_interval' => :'keep_alive_interval',
        :'time_since_established' => :'time_since_established',
        :'hold_time' => :'hold_time',
        :'negotiated_capability' => :'negotiated_capability',
        :'established_connection_count' => :'established_connection_count'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'transport_node' => :'ResourceReference',
        :'connection_state' => :'String',
        :'neighbor_address' => :'String',
        :'messages_sent' => :'Integer',
        :'connection_drop_count' => :'Integer',
        :'remote_port' => :'Integer',
        :'source_address' => :'String',
        :'total_in_prefix_count' => :'Integer',
        :'messages_received' => :'Integer',
        :'neighbor_router_id' => :'String',
        :'total_out_prefix_count' => :'Integer',
        :'lr_component_id' => :'String',
        :'graceful_restart' => :'BOOLEAN',
        :'remote_as_number' => :'String',
        :'announced_capabilities' => :'Array<String>',
        :'local_port' => :'Integer',
        :'keep_alive_interval' => :'Integer',
        :'time_since_established' => :'Integer',
        :'hold_time' => :'Integer',
        :'negotiated_capability' => :'Array<String>',
        :'established_connection_count' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'transport_node')
        self.transport_node = attributes[:'transport_node']
      end

      if attributes.has_key?(:'connection_state')
        self.connection_state = attributes[:'connection_state']
      end

      if attributes.has_key?(:'neighbor_address')
        self.neighbor_address = attributes[:'neighbor_address']
      end

      if attributes.has_key?(:'messages_sent')
        self.messages_sent = attributes[:'messages_sent']
      end

      if attributes.has_key?(:'connection_drop_count')
        self.connection_drop_count = attributes[:'connection_drop_count']
      end

      if attributes.has_key?(:'remote_port')
        self.remote_port = attributes[:'remote_port']
      end

      if attributes.has_key?(:'source_address')
        self.source_address = attributes[:'source_address']
      end

      if attributes.has_key?(:'total_in_prefix_count')
        self.total_in_prefix_count = attributes[:'total_in_prefix_count']
      end

      if attributes.has_key?(:'messages_received')
        self.messages_received = attributes[:'messages_received']
      end

      if attributes.has_key?(:'neighbor_router_id')
        self.neighbor_router_id = attributes[:'neighbor_router_id']
      end

      if attributes.has_key?(:'total_out_prefix_count')
        self.total_out_prefix_count = attributes[:'total_out_prefix_count']
      end

      if attributes.has_key?(:'lr_component_id')
        self.lr_component_id = attributes[:'lr_component_id']
      end

      if attributes.has_key?(:'graceful_restart')
        self.graceful_restart = attributes[:'graceful_restart']
      end

      if attributes.has_key?(:'remote_as_number')
        self.remote_as_number = attributes[:'remote_as_number']
      end

      if attributes.has_key?(:'announced_capabilities')
        if (value = attributes[:'announced_capabilities']).is_a?(Array)
          self.announced_capabilities = value
        end
      end

      if attributes.has_key?(:'local_port')
        self.local_port = attributes[:'local_port']
      end

      if attributes.has_key?(:'keep_alive_interval')
        self.keep_alive_interval = attributes[:'keep_alive_interval']
      end

      if attributes.has_key?(:'time_since_established')
        self.time_since_established = attributes[:'time_since_established']
      end

      if attributes.has_key?(:'hold_time')
        self.hold_time = attributes[:'hold_time']
      end

      if attributes.has_key?(:'negotiated_capability')
        if (value = attributes[:'negotiated_capability']).is_a?(Array)
          self.negotiated_capability = value
        end
      end

      if attributes.has_key?(:'established_connection_count')
        self.established_connection_count = attributes[:'established_connection_count']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@remote_port.nil? && @remote_port > 65535
        invalid_properties.push("invalid value for 'remote_port', must be smaller than or equal to 65535.")
      end

      if !@remote_port.nil? && @remote_port < 1
        invalid_properties.push("invalid value for 'remote_port', must be greater than or equal to 1.")
      end

      if !@local_port.nil? && @local_port > 65535
        invalid_properties.push("invalid value for 'local_port', must be smaller than or equal to 65535.")
      end

      if !@local_port.nil? && @local_port < 1
        invalid_properties.push("invalid value for 'local_port', must be greater than or equal to 1.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      connection_state_validator = EnumAttributeValidator.new('String', ["INVALID", "IDLE", "CONNECT", "ACTIVE", "OPEN_SENT", "OPEN_CONFIRM", "ESTABLISHED"])
      return false unless connection_state_validator.valid?(@connection_state)
      return false if !@remote_port.nil? && @remote_port > 65535
      return false if !@remote_port.nil? && @remote_port < 1
      return false if !@local_port.nil? && @local_port > 65535
      return false if !@local_port.nil? && @local_port < 1
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] connection_state Object to be assigned
    def connection_state=(connection_state)
      validator = EnumAttributeValidator.new('String', ["INVALID", "IDLE", "CONNECT", "ACTIVE", "OPEN_SENT", "OPEN_CONFIRM", "ESTABLISHED"])
      unless validator.valid?(connection_state)
        fail ArgumentError, "invalid value for 'connection_state', must be one of #{validator.allowable_values}."
      end
      @connection_state = connection_state
    end

    # Custom attribute writer method with validation
    # @param [Object] remote_port Value to be assigned
    def remote_port=(remote_port)

      if !remote_port.nil? && remote_port > 65535
        fail ArgumentError, "invalid value for 'remote_port', must be smaller than or equal to 65535."
      end

      if !remote_port.nil? && remote_port < 1
        fail ArgumentError, "invalid value for 'remote_port', must be greater than or equal to 1."
      end

      @remote_port = remote_port
    end

    # Custom attribute writer method with validation
    # @param [Object] local_port Value to be assigned
    def local_port=(local_port)

      if !local_port.nil? && local_port > 65535
        fail ArgumentError, "invalid value for 'local_port', must be smaller than or equal to 65535."
      end

      if !local_port.nil? && local_port < 1
        fail ArgumentError, "invalid value for 'local_port', must be greater than or equal to 1."
      end

      @local_port = local_port
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          transport_node == o.transport_node &&
          connection_state == o.connection_state &&
          neighbor_address == o.neighbor_address &&
          messages_sent == o.messages_sent &&
          connection_drop_count == o.connection_drop_count &&
          remote_port == o.remote_port &&
          source_address == o.source_address &&
          total_in_prefix_count == o.total_in_prefix_count &&
          messages_received == o.messages_received &&
          neighbor_router_id == o.neighbor_router_id &&
          total_out_prefix_count == o.total_out_prefix_count &&
          lr_component_id == o.lr_component_id &&
          graceful_restart == o.graceful_restart &&
          remote_as_number == o.remote_as_number &&
          announced_capabilities == o.announced_capabilities &&
          local_port == o.local_port &&
          keep_alive_interval == o.keep_alive_interval &&
          time_since_established == o.time_since_established &&
          hold_time == o.hold_time &&
          negotiated_capability == o.negotiated_capability &&
          established_connection_count == o.established_connection_count
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [transport_node, connection_state, neighbor_address, messages_sent, connection_drop_count, remote_port, source_address, total_in_prefix_count, messages_received, neighbor_router_id, total_out_prefix_count, lr_component_id, graceful_restart, remote_as_number, announced_capabilities, local_port, keep_alive_interval, time_since_established, hold_time, negotiated_capability, established_connection_count].hash
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