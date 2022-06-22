require "json"
module Gitea
  module Api 
    class ServerError < Common::Exception 
      attr_reader :http_code, :error_code, :message 

      def initialize(response)
        @http_code = response.code 
        @attrs = JSON.parse(response.body) rescue {}
      end

      def to_s
        @attrs.delete('documentation_url')
        @attrs.merge({'HTTPCode' => @http_code}).map do |k, v|
          [k, v].join(": ")
        end.join(", ")
      end
    end

    class CallBackError < ServerError 
    end # CallBackError

    class ClientError < Common::Exception
    end # ClientError
  end # Api
end # Git