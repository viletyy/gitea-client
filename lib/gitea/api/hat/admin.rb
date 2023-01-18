module Gitea 
  module Api 
    module Hat 
      module Admin 

        def patch_admin_users_by_username(username, opt = {})
          @http.patch("/admin/users/#{username}", opt)
        end
        
      end # Admin
    end # Hat 
  end # Api
end # Gitea