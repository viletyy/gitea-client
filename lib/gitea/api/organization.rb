module Gitea
  module Api
    module Organization 
      def get_orgs(opt={})
        @http.get("/orgs", opt)
      end

      def post_orgs(opt={})
        @http.post("/orgs", opt)
      end

      def get_orgs_by_org(org, opt={})
        @http.get("/orgs/#{org}", opt)
      end

      def delete_orgs_by_org(org, opt={})
        @http.delete("/orgs/#{org}", opt)
      end

      def patch_orgs_by_org(org, opt={})
        @http.patch("/orgs/#{org}", opt)
      end

      def get_orgs_hooks_by_org(org, opt={})
        @http.get("/orgs/#{org}/hooks", opt)
      end

      def post_orgs_hooks_by_org(org, opt={})
        @http.post("/orgs/#{org}/hooks", opt)
      end

      def get_orgs_hooks_by_org_id(org, id, opt={})
        @http.get("/orgs/#{org}/hooks/#{id}", opt)
      end

      def delete_orgs_hooks_by_org_id(org, id, opt={})
        @http.delete("/orgs/#{org}/hooks/#{id}", opt)
      end

      def patch_orgs_hooks_by_org_id(org, id, opt={})
        @http.patch("/orgs/#{org}/hooks/#{id}", opt)
      end

      def get_orgs_labels_by_org(org, opt={})
        @http.get("/orgs/#{org}/labels", opt)
      end

      def post_orgs_labels_by_org(org, opt={})
        @http.post("/orgs/#{org}/labels", opt)
      end

      def get_orgs_labels_by_org_id(org, id, opt={})
        @http.get("/orgs/#{org}/labels/#{id}", opt)
      end

      def delete_orgs_labels_by_org_id(org, id, opt={})
        @http.delete("/orgs/#{org}/labels/#{id}", opt)
      end

      def patch_orgs_labels_by_org_id(org, id, opt={})
        @http.patch("/orgs/#{org}/labels/#{id}", opt)
      end

      def get_orgs_members_by_org(org, opt={})
        @http.get("/orgs/#{org}/members", opt)
      end

      def get_orgs_members_by_org_username(org, username, opt={})
        @http.get("/orgs/#{org}/members/#{username}", opt)
      end

      def delete_orgs_members_by_org_username(org, username, opt={})
        @http.delete("/orgs/#{org}/members/#{username}", opt)
      end

      def get_orgs_public_members_by_org(org, opt={})
        @http.get("/orgs/#{org}/public_members", opt)
      end

      def get_orgs_public_members_by_org_username(org, username, opt={})
        @http.get("/orgs/#{org}/public_members/#{username}", opt)
      end

      def put_orgs_public_members_by_org_username(org, username, opt={})
        @http.put("/orgs/#{org}/public_members/#{username}", opt)
      end

      def delete_orgs_public_members_by_org_username(org, username, opt={})
        @http.delete("/orgs/#{org}/public_members/#{username}", opt)
      end

      def get_orgs_repos_by_org(org, opt={})
        @http.get("/orgs/#{org}/repos", opt)
      end

      def post_orgs_repos_by_org(org, opt={})
        @http.post("/orgs/#{org}/repos", opt)
      end

      def get_orgs_teams_by_org(org, opt={})
        @http.get("/orgs/#{org}/teams", opt)
      end

      def post_orgs_teams_by_org(org, opt={})
        @http.post("/orgs/#{org}/teams", opt)
      end

      def get_orgs_temas_search_by_org(org, opt={})
        @http.get("/orgs/#{org}/teams/search", opt)
      end

      def get_teams_by_id(id, opt={})
        @http.get("/teams/#{id}", opt)
      end

      def delete_teams_by_id(id, opt={})
        @http.delete("/teams/#{id}", opt)
      end

      def patch_teams_by_id(id, opt={})
        @http.patch("/teams/#{id}", opt)
      end

      def get_teams_members_by_id(id, opt={})
        @http.get("/teams/#{id}/members", opt)
      end

      def get_teams_members_by_id_username(id, username, opt={})
        @http.get("/teams/#{id}/members/#{username}", opt)
      end

      def put_teams_members_by_id_username(id, username, opt={})
        @http.put("/teams/#{id}/members/#{username}", opt)
      end

      def delete_teams_members_by_id_username(id, username, opt={})
        @http.delete("/teams/#{id}/members/#{username}", opt)
      end

      def get_teams_repos_by_id(id, opt={})
        @http.get("/teams/#{id}/repos", opt)
      end

      def get_teams_repos_by_id_org_repo(id, org, repo, opt = {})
        @http.get("/teams/#{id}/repos/#{org}/#{repo}", opt)
      end

      def put_teams_repos_by_id_org_repo(id, org, repo, opt={})
        @http.put("/teams/#{id}/repos/#{org}/#{repo}", opt)
      end

      def delete_teams_repos_by_id_org_repo(id, org, repo, opt={})
        @http.delete("/teams/#{id}/repos/#{org}/#{repo}", opt)
      end

      def get_user_orgs(opt={})
        @http.get("/user/orgs", opt)
      end

      def get_users_orgs_by_username(username, opt={})
        @http.get("/users/#{username}/orgs", opt)
      end

      def get_users_orgs_permissions_by_username_org(username, org, opt={})
        @http.get("/users/#{username}/orgs/#{org}/permissions", opt)
      end

    end # Organization 
  end # Api 
end # Gitea