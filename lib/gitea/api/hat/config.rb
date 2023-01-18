module Gitea 
  module Api

    module Hat 
      class Config < Common::Struct::Base
        attrs :domain, :hat_base_url, :username, :password, :token, :open_timeout, :read_timeout, :log_filepath
  
        def initialize(opts = {})
          super(opts)
  
          valid!
          normalize_domain
        end
  
        private 
        def valid!
          if @domain.nil? || @hat_base_url.nil?
            fail Exception, "@domain, @hat_base_url not permit blank."
          end
        end
  
        def normalize_domain
          uri = URI.parse(domain)
          uri = URI.parse(domain)
          uri = URI.parse("http://#{domain}") unless uri.scheme
  
          if uri.scheme != 'http' and uri.scheme != 'https'
            fail ClientError, "Only HTTP and HTTPS domain are accepted."
          end
  
          @domain = uri
        end
      end
    end # Hat
  end # Api
end # Gitea