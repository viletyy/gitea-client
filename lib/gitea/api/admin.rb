module Gitea
  module Api
    module Admin 
      def get_admin_cron(opt={})
        @http.get("/admin/cron", opt)
      end

      def post_admin_cron_by_task(task, opt={})
        @http.post("/admin/cron/#{task}", opt)
      end

      def get_admin_orgs(opt={})
        @http.get("/admin/orgs", opt)
      end

      def get_admin_unadopted(opt={})
        @http.get("/admin/unadopted", opt)
      end

      def post_admin_unadopted_by_owner_repo(owner, repo, opt={})
        @http.post("/admin/unadopted/#{owner}/#{repo}", opt)
      end

      def delete_admin_unadopted_by_owner_repo(owner, repo, opt={})
        @http.delete("/admin/unadopted/#{owner}/#{repo}", opt)
      end

      def get_admin_users(opt={})
        @http.get("/admin/users", opt)
      end

      def post_admin_users(opt={})
        @http.post("/admin/users", opt)
      end

      def delete_admin_users_by_username(username, opt={})
        @http.delete("/admin/users/#{username}", opt)
      end

      def patch_admin_users_by_username(username, opt={})
        @http.patch("/admin/users/#{username}", opt)
      end

      def post_admin_users_keys_by_username(username, opt={})
        @http.post("/admin/users/#{username}/keys", opt)
      end

      def delete_admin_users_keys_by_username_id(username, id, opt={})
        @http.delete("/admin/users/#{username}/keys/#{id}", opt)
      end

      def post_admin_users_orgs_by_username(username, opt={})
        @http.post("/admin/users/#{username}/orgs", opt)
      end

      def post_admin_users_repos_by_username(username, opt={})
        @http.post("/admin/users/#{username}/repos", opt)
      end
    end # Admin 
  end # Api 
end # Gitea