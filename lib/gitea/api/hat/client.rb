module Gitea
  module Api
    module Hat 
      class Client 

        # 构造Api client，用于操作Api数据
        # @param opts [Hash] 构造client时的参数选项
        # @option opts [string] domain [必填] gitea服务地址
        # @option opts [string] hat_base_url [必填] api相对路径
        # @option opts [string] admin_username [必填] 管理员账号
        # @option opts [string] admin_password [必填] 管理员密码
        # @option opts [string] username [选填] 用户账号
        # @option opts [string] password [选填] 用户密码
        # @option opts [string] gitea_token [选填] 用户token
        def initialize(opts)
          @config = Config.new(opts)
          Gitea::Common::Logging.set_log_file(@config.log_filepath)
          @http = Http.new(@config)
        end
  
        def config 
          @config
        end
  
        def config=(config)
          unless config.is_a?(Gitea::Api::Hat::Config)
            fail Exception, "load config failure!"
          end
          @config = config
          @http = Http.new(config)
        end
  
        def token 
          @config.token 
        end
  
        def token=(token)
          @config.token = token 
        end
  
        include Gitea::Api::Hat::Repository
        include Gitea::Api::Hat::Users
        include Gitea::Api::Hat::Organization
        include Gitea::Api::Hat::Admin
      end
    end # Hat 
  end # Api
end # Gitea