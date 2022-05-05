module Gitea 
  module Api
    module Miscellaneous
      def post_markdown(opt={}) 
        @http.post("/markdown", opt)
      end

      def post_markdown_new(opt={})
        @http.post("/markdown/new", opt)
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