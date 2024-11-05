module Gitea 
  module Api
    module Miscellaneous
      def get_gitignore_templates(opt={})
        @http.get("/gitignore/templates", opt)
      end

      def get_gitignore_templates_by_name(name, opt={})
        @http.get("/gitignore/templates/#{name}", opt)
      end

      def get_label_templates(opt={})
        @http.get("/label/templates", opt)
      end

      def get_label_templates_by_name(name, opt={})
        @http.get("/label/templates/#{name}", opt)
      end

      def get_licenses(opt={})
        @http.get("/licenses", opt)
      end

      def get_licenses_by_name(opt={})
        @http.get("/licenses/#{name}", opt)
      end

      def post_markdown(opt={}) 
        @http.post("/markdown", opt)
      end

      def post_markdown_raw(opt={})
        @http.post("/markdown/raw", opt)
      end

      def post_markup(opt={})
        @http.post("/markup", opt)
      end

      def get_nodeinfo(opt = {})
        @http.get("/nodeinfo", opt)
      end

      def get_signing_key_gpg(opt={})
        @http.get("/signing-key.gpg", opt)
      end

      def get_version(opt={})
        @http.get("/version", opt)
      end
    end # Miscellaneous 
  end # Api
end # Gitea