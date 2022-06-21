module Gitea
  module Api
    module Activity 
      def get_activity(opt={})
        @http.get("/activity", opt)
      end

      def get_activity_develop(opt={})
        @http.get("/activity/develop", opt)
      end

      def get_activity_project(opt={})
        @http.get("/activity/project", opt)
      end
    end # Activity 
  end # Api
end # Gitea