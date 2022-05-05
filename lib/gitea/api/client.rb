module Gitea
  module Api
    class Client 

      # 构造Api client，用于操作Api数据
      # @param opts [Hash] 构造client时的参数选项
      # @option opts [string] domain [必填] gitea服务地址
      # @option opts [string] base_url [必填] api相对路径
      # @option opts [string] admin_username [必填] 管理员账号
      # @option opts [string] admin_password [必填] 管理员密码
      # @option opts [string] username [选填] 用户账号
      # @option opts [string] password [选填] 用户密码
      # @option opts [string] gitea_token [选填] 用户token
      def initialize(opts)
        @config = Config.new(opts)
        @http = Http.new(@config)
      end

      include Gitea::Api::Issue
      include Gitea::Api::Repository
      include Gitea::Api::Settings
      include Gitea::Api::User
      include Gitea::Api::Organization
      include Gitea::Api::Notification
      include Gitea::Api::Miscellaneous
      include Gitea::Api::Admin
    end
  end # User
end # Gitea