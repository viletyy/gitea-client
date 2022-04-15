module Gitea 
  module Api

    class Config < Common::Struct::Base
      attrs :domain, :base_url, :username, :password, :token, :open_timeout, :read_timeout

      def initialize(opts = {})
        super(opts)

        valid!
        normalize_domain
      end

      private 
      def valid!
        if @domain.nil? || @base_url.nil?
          fail Exception, "@domain, @base_url not permit blank."
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
  end # Common
end # Gitea