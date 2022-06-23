require 'base64'
require 'json'

module Gitea
  module Api
    class Http 
      DEFAULT_CONTENT_TYPE = 'application/json'
      TOKEN_HEADER = 'Authorization'
      OPEN_TIMEOUT = 10
      READ_TIMEOUT = 120

      include Common::Logging

      def initialize(config)
        @config = config 
      end

      def get_request_url(api_url)
        url = @config.domain.dup
        url.query = nil
        url.fragment = nil 
        [url.to_s, @config.base_url, api_url].join('')
      end

      def get(api_url = '', http_options = {}, &block)
        do_request('GET', api_url, http_options, &block)
      end

      def put(api_url = '', http_options = {}, &block)
        do_request('PUT', api_url, http_options, &block)
      end

      def patch(api_url = '', http_options = {}, &block)
        do_request('PATCH', api_url, http_options, &block)
      end

      def post(api_url = '', http_options = {}, &block)
        do_request('POST', api_url, http_options, &block)
      end

      def delete(api_url = '', http_options = {}, &block)
        do_request('DELETE', api_url, http_options, &block)
      end

      def head(api_url = '', http_options = {}, &block)
        do_request('HEAD', api_url, http_options, &block)
      end

      def options(api_url = '', http_options = {}, &block)
        do_request('OPTIONS', api_url, http_options, &block)
      end

      private 
      # Do Http request 
      def do_request(verb, api_url, http_options = {}, &block)

        headers = http_options[:headers] || {}
        headers['user-agent'] = get_user_agent
        headers['date'] = Time.now.httpdate
        headers['content-type'] ||= DEFAULT_CONTENT_TYPE

        if @config.username and @config.password
          headers[TOKEN_HEADER] = 'Basic ' + Base64::encode64(@config.username + ":" + @config.password)
        end

        headers[:params] = http_options[:query] || {}
        headers[:params].merge!({access_token: @config.token}) if @config.token
        logger.debug("Send HTTP request, verb: #{verb}, http_options: #{http_options}")

        request = RestClient::Request.new(
          :method => verb,
          :url => get_request_url(api_url),
          :headers => headers, 
          :payload => http_options[:body],
          :open_timeout => @config.open_timeout || OPEN_TIMEOUT,
          :read_timeout => @config.read_timeout || READ_TIMEOUT
        )


        response = request.execute do |resp, &blk|
          if resp.code >= 300 
            e = ServerError.new(resp)
            logger.error(e.to_s)
            raise e 
          else 
            resp.return!(&blk)
          end
        end

        # If streaming read_body is used, we need to create the
        # RestClient::Response ourselves
        unless response.is_a?(RestClient::Response)
          if response.code.to_i >= 300
            body = response.body
            if RestClient::version < '2.1.0'
              body = RestClient::Request.decode(response['content-encoding'], response.body)
            end
            response = RestClient::Response.create(body, response, request)
            e = ServerError.new(response)
            logger.error(e.to_s)
            raise e
          end
          response = RestClient::Response.create(nil, response, request)
          response.return!
        end        

        JSON.parse(response)
      end

      def get_user_agent
        "gitea-client/#{VERSION}"
      end

    end 
  end # Common 
end # Gitea