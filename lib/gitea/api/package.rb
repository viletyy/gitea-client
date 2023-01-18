module Gitea 
  module Api 
    module Package 

      def get_packages_by_owner(owner, opt = {})
        @http.get("/packages/#{owner}", opt)
      end

      def get_packages_by_owner_type_name_version(owner, type, name, version, opt = {})
        @http.get("/packages/#{owner}/#{type}/#{name}/#{version}", opt)
      end

      def delete_packages_by_owner_type_name_version(owner, type, name, version, opt = {})
        @http.delete("/packages/#{owner}/#{type}/#{name}/#{version}", opt)
      end

      def get_packages_files_by_owner_type_name_version(owner, type, name, version, opt = {})
        @http.get("/packages/#{owner}/#{type}/#{name}/#{version}", opt)
      end
    end # Package 
  end # Api 
end # Gitea