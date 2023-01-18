module Gitea 
  module Api 
    module Hat 
      module Organization 
        
        def patch_orgs_by_org(org, opt = {})
          @http.patch("/orgs/#{org}", opt)
        end

        def post_orgs(opt = {})
          @http.post("/orgs", opt)
        end

        def put_teams_repos_by_id_org(id, org, opt = {})
          @http.put("/teams/#{id}/repos/#{org}", opt)
        end

        def delete_teams_repos_by_id_org(id, org, opt = {})
          @http.delete("/teams/#{id}/repos/#{org}", opt)
        end

      end # Organization 
    end # Hat 
  end # Api 
end # Gitea