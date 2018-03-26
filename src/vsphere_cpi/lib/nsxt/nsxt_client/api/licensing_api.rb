=begin
#NSX API

#VMware NSX REST API

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require "uri"

module NSXT
  class LicensingApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Accept end user license agreement 
    # Accept end user license agreement 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def accept_eula(opts = {})
      accept_eula_with_http_info(opts)
      return nil
    end

    # Accept end user license agreement 
    # Accept end user license agreement 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def accept_eula_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LicensingApi.accept_eula ..."
      end
      # resource path
      local_var_path = "/eula/accept"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LicensingApi#accept_eula\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Accept end user license agreement 
    # Accept end user license agreement 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def accept_upgrade_eula(opts = {})
      accept_upgrade_eula_with_http_info(opts)
      return nil
    end

    # Accept end user license agreement 
    # Accept end user license agreement 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def accept_upgrade_eula_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LicensingApi.accept_upgrade_eula ..."
      end
      # resource path
      local_var_path = "/upgrade/eula/accept"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LicensingApi#accept_upgrade_eula\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add a new license key
    # This will add a license key to the system. The API supports adding only one license key for each license edition type - Standard, Advanced or Enterprise. If a new license key is tried to add for an edition for which the license key already exists, then this API will return an error. 
    # @param license 
    # @param [Hash] opts the optional parameters
    # @return [License]
    def create_license(license, opts = {})
      data, _status_code, _headers = create_license_with_http_info(license, opts)
      return data
    end

    # Add a new license key
    # This will add a license key to the system. The API supports adding only one license key for each license edition type - Standard, Advanced or Enterprise. If a new license key is tried to add for an edition for which the license key already exists, then this API will return an error. 
    # @param license 
    # @param [Hash] opts the optional parameters
    # @return [Array<(License, Fixnum, Hash)>] License data, response status code and response headers
    def create_license_with_http_info(license, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LicensingApi.create_license ..."
      end
      # verify the required parameter 'license' is set
      if @api_client.config.client_side_validation && license.nil?
        fail ArgumentError, "Missing the required parameter 'license' when calling LicensingApi.create_license"
      end
      # resource path
      local_var_path = "/licenses"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(license)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'License')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LicensingApi#create_license\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deprecated. Remove a license identified by the license-key
    # Deprecated. Use POST /licenses?action=delete API instead. 
    # @param license_key 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_license(license_key, opts = {})
      delete_license_with_http_info(license_key, opts)
      return nil
    end

    # Deprecated. Remove a license identified by the license-key
    # Deprecated. Use POST /licenses?action&#x3D;delete API instead. 
    # @param license_key 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_license_with_http_info(license_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LicensingApi.delete_license ..."
      end
      # verify the required parameter 'license_key' is set
      if @api_client.config.client_side_validation && license_key.nil?
        fail ArgumentError, "Missing the required parameter 'license_key' when calling LicensingApi.delete_license"
      end
      # resource path
      local_var_path = "/licenses/{license-key}".sub('{' + 'license-key' + '}', license_key.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LicensingApi#delete_license\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Remove a license
    # This will delete the license key identified in the request body by \"license_key\" and its properties from the system. Attempting to delete the last license key will result in an error. 
    # @param license 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_license_key_delete(license, opts = {})
      delete_license_key_delete_with_http_info(license, opts)
      return nil
    end

    # Remove a license
    # This will delete the license key identified in the request body by \&quot;license_key\&quot; and its properties from the system. Attempting to delete the last license key will result in an error. 
    # @param license 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_license_key_delete_with_http_info(license, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LicensingApi.delete_license_key_delete ..."
      end
      # verify the required parameter 'license' is set
      if @api_client.config.client_side_validation && license.nil?
        fail ArgumentError, "Missing the required parameter 'license' when calling LicensingApi.delete_license_key_delete"
      end
      # resource path
      local_var_path = "/licenses?action=delete"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(license)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LicensingApi#delete_license_key_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Return the acceptance status of end user license agreement 
    # Return the acceptance status of end user license agreement 
    # @param [Hash] opts the optional parameters
    # @return [EULAAcceptance]
    def get_eula_acceptance(opts = {})
      data, _status_code, _headers = get_eula_acceptance_with_http_info(opts)
      return data
    end

    # Return the acceptance status of end user license agreement 
    # Return the acceptance status of end user license agreement 
    # @param [Hash] opts the optional parameters
    # @return [Array<(EULAAcceptance, Fixnum, Hash)>] EULAAcceptance data, response status code and response headers
    def get_eula_acceptance_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LicensingApi.get_eula_acceptance ..."
      end
      # resource path
      local_var_path = "/eula/acceptance"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'EULAAcceptance')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LicensingApi#get_eula_acceptance\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Return the content of end user license agreement 
    # Return the content of end user license agreement in the specified format. By default, it's pure string without line break 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :format End User License Agreement content output format
    # @option opts [String] :included_fields Comma separated list of fields that should be included to result of query
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer) (default to 1000)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [EULAContent]
    def get_eula_content(opts = {})
      data, _status_code, _headers = get_eula_content_with_http_info(opts)
      return data
    end

    # Return the content of end user license agreement 
    # Return the content of end user license agreement in the specified format. By default, it&#39;s pure string without line break 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :format End User License Agreement content output format
    # @option opts [String] :included_fields Comma separated list of fields that should be included to result of query
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [Array<(EULAContent, Fixnum, Hash)>] EULAContent data, response status code and response headers
    def get_eula_content_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LicensingApi.get_eula_content ..."
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling LicensingApi.get_eula_content, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling LicensingApi.get_eula_content, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = "/eula/content"

      # query parameters
      query_params = {}
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'format'] = opts[:'format'] if !opts[:'format'].nil?
      query_params[:'included_fields'] = opts[:'included_fields'] if !opts[:'included_fields'].nil?
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'sort_ascending'] = opts[:'sort_ascending'] if !opts[:'sort_ascending'].nil?
      query_params[:'sort_by'] = opts[:'sort_by'] if !opts[:'sort_by'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'EULAContent')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LicensingApi#get_eula_content\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deprecated. Return the Enterprise License 
    # Deprecated. Use the GET /licenses API instead. 
    # @param [Hash] opts the optional parameters
    # @return [License]
    def get_license(opts = {})
      data, _status_code, _headers = get_license_with_http_info(opts)
      return data
    end

    # Deprecated. Return the Enterprise License 
    # Deprecated. Use the GET /licenses API instead. 
    # @param [Hash] opts the optional parameters
    # @return [Array<(License, Fixnum, Hash)>] License data, response status code and response headers
    def get_license_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LicensingApi.get_license ..."
      end
      # resource path
      local_var_path = "/license"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'License')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LicensingApi#get_license\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deprecated. Get license properties for license identified by the license-key
    # Deprecated. Use GET /licenses API instead.
    # @param license_key 
    # @param [Hash] opts the optional parameters
    # @return [License]
    def get_license_by_key(license_key, opts = {})
      data, _status_code, _headers = get_license_by_key_with_http_info(license_key, opts)
      return data
    end

    # Deprecated. Get license properties for license identified by the license-key
    # Deprecated. Use GET /licenses API instead.
    # @param license_key 
    # @param [Hash] opts the optional parameters
    # @return [Array<(License, Fixnum, Hash)>] License data, response status code and response headers
    def get_license_by_key_with_http_info(license_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LicensingApi.get_license_by_key ..."
      end
      # verify the required parameter 'license_key' is set
      if @api_client.config.client_side_validation && license_key.nil?
        fail ArgumentError, "Missing the required parameter 'license_key' when calling LicensingApi.get_license_by_key"
      end
      # resource path
      local_var_path = "/licenses/{license-key}".sub('{' + 'license-key' + '}', license_key.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'License')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LicensingApi#get_license_by_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get usage report of all registered modules
    # Returns usage report of all registered modules 
    # @param [Hash] opts the optional parameters
    # @return [FeatureUsageList]
    def get_license_usage_report(opts = {})
      data, _status_code, _headers = get_license_usage_report_with_http_info(opts)
      return data
    end

    # Get usage report of all registered modules
    # Returns usage report of all registered modules 
    # @param [Hash] opts the optional parameters
    # @return [Array<(FeatureUsageList, Fixnum, Hash)>] FeatureUsageList data, response status code and response headers
    def get_license_usage_report_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LicensingApi.get_license_usage_report ..."
      end
      # resource path
      local_var_path = "/licenses/licenses-usage"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'FeatureUsageList')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LicensingApi#get_license_usage_report\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get usage report of all registred modules in CSV format
    # Returns usage report of all registered modules in CSV format 
    # @param [Hash] opts the optional parameters
    # @return [FeatureUsageListInCsvFormat]
    def get_license_usage_report_in_csv_format_csv(opts = {})
      data, _status_code, _headers = get_license_usage_report_in_csv_format_csv_with_http_info(opts)
      return data
    end

    # Get usage report of all registred modules in CSV format
    # Returns usage report of all registered modules in CSV format 
    # @param [Hash] opts the optional parameters
    # @return [Array<(FeatureUsageListInCsvFormat, Fixnum, Hash)>] FeatureUsageListInCsvFormat data, response status code and response headers
    def get_license_usage_report_in_csv_format_csv_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LicensingApi.get_license_usage_report_in_csv_format_csv ..."
      end
      # resource path
      local_var_path = "/licenses/licenses-usage?format=csv"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/csv'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'FeatureUsageListInCsvFormat')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LicensingApi#get_license_usage_report_in_csv_format_csv\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all licenses
    # Returns all licenses. 
    # @param [Hash] opts the optional parameters
    # @return [LicensesListResult]
    def get_licenses(opts = {})
      data, _status_code, _headers = get_licenses_with_http_info(opts)
      return data
    end

    # Get all licenses
    # Returns all licenses. 
    # @param [Hash] opts the optional parameters
    # @return [Array<(LicensesListResult, Fixnum, Hash)>] LicensesListResult data, response status code and response headers
    def get_licenses_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LicensingApi.get_licenses ..."
      end
      # resource path
      local_var_path = "/licenses"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'LicensesListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LicensingApi#get_licenses\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Return the acceptance status of end user license agreement 
    # Return the acceptance status of end user license agreement 
    # @param [Hash] opts the optional parameters
    # @return [EULAAcceptance]
    def get_upgrade_eula_acceptance(opts = {})
      data, _status_code, _headers = get_upgrade_eula_acceptance_with_http_info(opts)
      return data
    end

    # Return the acceptance status of end user license agreement 
    # Return the acceptance status of end user license agreement 
    # @param [Hash] opts the optional parameters
    # @return [Array<(EULAAcceptance, Fixnum, Hash)>] EULAAcceptance data, response status code and response headers
    def get_upgrade_eula_acceptance_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LicensingApi.get_upgrade_eula_acceptance ..."
      end
      # resource path
      local_var_path = "/upgrade/eula/acceptance"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'EULAAcceptance')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LicensingApi#get_upgrade_eula_acceptance\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Return the content of end user license agreement 
    # Return the content of end user license agreement in the specified format. By default, it's pure string without line break 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :format End User License Agreement content output format
    # @option opts [String] :included_fields Comma separated list of fields that should be included to result of query
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer) (default to 1000)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [EULAContent]
    def get_upgrade_eula_content(opts = {})
      data, _status_code, _headers = get_upgrade_eula_content_with_http_info(opts)
      return data
    end

    # Return the content of end user license agreement 
    # Return the content of end user license agreement in the specified format. By default, it&#39;s pure string without line break 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :format End User License Agreement content output format
    # @option opts [String] :included_fields Comma separated list of fields that should be included to result of query
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [Array<(EULAContent, Fixnum, Hash)>] EULAContent data, response status code and response headers
    def get_upgrade_eula_content_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LicensingApi.get_upgrade_eula_content ..."
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling LicensingApi.get_upgrade_eula_content, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling LicensingApi.get_upgrade_eula_content, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = "/upgrade/eula/content"

      # query parameters
      query_params = {}
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'format'] = opts[:'format'] if !opts[:'format'].nil?
      query_params[:'included_fields'] = opts[:'included_fields'] if !opts[:'included_fields'].nil?
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'sort_ascending'] = opts[:'sort_ascending'] if !opts[:'sort_ascending'].nil?
      query_params[:'sort_by'] = opts[:'sort_by'] if !opts[:'sort_by'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'EULAContent')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LicensingApi#get_upgrade_eula_content\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deprecated. Assign an Updated Enterprise License Key 
    # Deprecated. Use the POST /licenses API instead 
    # @param license 
    # @param [Hash] opts the optional parameters
    # @return [License]
    def update_license(license, opts = {})
      data, _status_code, _headers = update_license_with_http_info(license, opts)
      return data
    end

    # Deprecated. Assign an Updated Enterprise License Key 
    # Deprecated. Use the POST /licenses API instead 
    # @param license 
    # @param [Hash] opts the optional parameters
    # @return [Array<(License, Fixnum, Hash)>] License data, response status code and response headers
    def update_license_with_http_info(license, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LicensingApi.update_license ..."
      end
      # verify the required parameter 'license' is set
      if @api_client.config.client_side_validation && license.nil?
        fail ArgumentError, "Missing the required parameter 'license' when calling LicensingApi.update_license"
      end
      # resource path
      local_var_path = "/license"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(license)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'License')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LicensingApi#update_license\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
