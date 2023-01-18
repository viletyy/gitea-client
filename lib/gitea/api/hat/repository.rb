module Gitea 
  module Api 
    module Hat 
      module Repository 
        def get_repos_contents_by_owner_repo(owner, repo, opt = {})
          @http.get("/repos/#{owner}/#{repo}/contents", opt)
        end
      end # Repository 
    end # Hat 
  end # Api 
end # Gitea