module Gitea 
  module Api 
    module Hat 
      module Users

        def get_users_heatmap_by_username(username, opt = {})
          @http.get("/users/#{username}/heatmap", opt)
        end
        
      end # Users 
    end # Hat
  end # Api
end # Gitea