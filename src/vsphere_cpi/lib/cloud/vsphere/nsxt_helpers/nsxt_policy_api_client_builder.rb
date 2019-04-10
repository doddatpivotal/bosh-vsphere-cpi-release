require 'swagger_client'

module VSphereCloud
  module NSXTPolicyApiClientBuilder
    def self.build_policy_api_client(config, logger)
      configuration = SwaggerClient::Configuration.new
      configuration.host = config.host
      configuration.username = config.username
      configuration.password = config.password
      configuration.logger = logger
      configuration.client_side_validation = false
      if ENV['BOSH_NSXT_CA_CERT_FILE']
        configuration.ssl_ca_cert = ENV['BOSH_NSXT_CA_CERT_FILE']
      end
      if ENV['NSXT_SKIP_SSL_VERIFY']
        configuration.verify_ssl = false
        configuration.verify_ssl_host = false
      end
      SwaggerClient::ApiClient.new(configuration)
    end
  end
end