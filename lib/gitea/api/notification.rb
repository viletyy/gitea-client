module Gitea
  module Api
    module Notification
      def get_notifications(opt={})
        @http.get("/notifications", opt)
      end
      
      def put_notifications(opt={})
        @http.put("/notifications", opt)
      end

      def get_notifications_new(opt={})
        @http.get("/notifications/new", opt)
      end

      def get_notifications_threads_by_id(opt={})
        @http.get("/notifications/threads/#{id}", opt)
      end

      def patch_notifications_threads_by_id(opt={})
        @http.patch("/notifications/threads/#{id}", opt)
      end

      def get_repos_notifications_by_owner_repo(owner, repo, opt={})
        @http.get("/repos/#{owner}/#{repo}/notifications", opt)
      end

      def put_repos_notifications_by_owner_repo(owner, repo, opt={})
        @http.put("/repos/#{owner}/#{repo}/notifications", opt)
      end
    end # Notification
  end # Api 
end # Gitea