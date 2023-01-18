module Gitea
  module Api
    module Activitypub 

      def get_activitypub_user_by_username(username, opt = {})
        @http.get("/activitypub/user/#{username}", opt)
      end

      def post_activitypub_user_inbox_by_username(username, opt = {})
        @http.post("/activitypub/user/#{username}/inbox", opt)
      end

    end # Admin
  end # Api 
end # Gitea