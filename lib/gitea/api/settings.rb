module Gitea
  module Api
    module Settings 
      def get_settings_api(opt = {})
        @http.get("/settings/api", opt)
      end

      def get_settings_attachment(opt = {})
        @http.get("/settings/attachment", opt)
      end

      def get_settings_repository(opt = {})
        @http.get("/settings/repository", opt)
      end

      def get_settings_ui(opt = {})
        @http.get("/settings/ui", opt)
      end
    end
  end # Gitea
end # Gitea