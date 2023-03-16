module Gitea 
  module Api
    module User 

      def get_user(opt={})
        @http.get("/user", opt)
      end

      def get_user_applications_oauth2(opt={})
        @http.get("/user/applications/oauth2", opt)
      end

      def post_user_applications_oauth2(opt={})
        @http.post("/user/applications/oauth2", opt)
      end

      def get_user_applications_oauth2_by_id(id, opt={})
        @http.get("/user/applications/oauth2/#{id}", opt)
      end

      def delete_user_applications_oauth2_by_id(id, opt={})
        @http.delete("/user/applications/oauth2/#{id}", opt)
      end

      def patch_user_applications_oauth2_by_id(id, opt={})
        @http.patch("/user/applications/oauth2/#{id}", opt)
      end

      def get_user_emails(opt={})
        @http.get("/user/emails", opt)
      end

      def post_user_emails(opt={})
        @http.post("/user/emails", opt)
      end

      def delete_user_emails(opt={})
        @http.delete("/user/emails", opt) 
      end

      def get_user_followers(opt={})
        @http.get("/user/followers", opt)
      end

      def get_user_following(opt={})
        @http.get("/user/following", opt)
      end

      def get_user_following_by_username(username, opt={})
        @http.get("/user/following/#{username}", opt)
      end

      def put_user_following_by_username(username, opt={})
        @http.put("/user/following/#{username}", opt)
      end

      def delete_user_following_by_username(username, opt={})
        @http.delete("/user/following/#{username}", opt)
      end

      def get_user_gpg_key_token(opt={})
        @http.get("/user/gpg_key_token", opt)
      end

      def post_user_gpg_key_verify(opt={})
        @http.get("/user/gpg_key_verify", opt)
      end

      def get_user_gpg_keys(opt={})
        @http.get("/user/gpg_keys", opt)
      end

      def post_user_gpg_keys(opt={})
        @http.post("/user/gpg_keys", opt)
      end

      def get_user_gpg_keys_by_id(id, opt={})
        @http.get("/user/gpg_keys/#{id}", opt)
      end

      def delete_user_gpg_keys_by_id(id, opt={})
        @http.delete("/user/gpg_keys/#{id}", opt)
      end

      def get_user_keys(opt={})
        @http.get("/user/keys", opt)
      end

      def post_user_keys(opt={})
        @http.post("/user/keys", opt)
      end

      def get_user_keys_by_id(id, opt={})
        @http.get("/user/keys/#{id}", opt)
      end

      def delete_user_keys_by_id(id, opt={})
        @http.delete("/user/keys/#{id}", opt)
      end

      def get_user_repos(opt={})
        @http.get("/user/repos", opt)
      end

      def get_user_settings(opt={})
        @http.get("/user/settings", opt)
      end

      def patch_user_settings(opt={})
        @http.patch("/user/settings", opt)
      end

      def get_user_starred(opt={})
        @http.get("/user/starred", opt)
      end

      def get_user_starred_by_owner_repo(owner, repo, opt={})
        @http.get("/user/starred/#{owner}/#{repo}", opt)
      end

      def put_user_starred_by_owner_repo(owner, repo, opt={})
        @http.put("/user/starred/#{owner}/#{repo}", opt)
      end

      def delete_user_starred_by_owner_repo(owner, repo, opt={})
        @http.delete("/user/starred/#{owner}/#{repo}", opt)
      end

      def get_user_stopwatches(opt={})
        @http.get("/user/stopwatches", opt)
      end

      def get_user_subscriptions(opt={})
        @http.get("/user/subscriptions", opt)
      end

      def get_user_teams(opt={})
        @http.get("/user/teams", opt)
      end

      def get_user_times(opt={})
        @http.get("/user/times", opt)
      end

      def get_users_search(opt={})
        @http.get("/users/search", opt)
      end

      def get_users_by_username(username, opt = {})
        @http.get("/users/#{username}", opt)
      end

      def get_users_following_by_follower_followee(follower, followee, opt={})
        @http.get("/users/#{follower}/following/#{followee}", opt)
      end

      def get_users_followers_by_username(username, opt={})
        @http.get("/users/#{username}/followers", opt)
      end

      def get_users_following_by_username(username, opt={})
        @http.get("/user/#{username}/following", opt)
      end

      def get_users_gpg_keys_by_username(username, opt={})
        @http.get("/user/#{username}/gpg_keys", opt)
      end

      def get_users_heatmap_by_username(username, opt = {})
        @http.get("/users/#{username}/heatmap", opt)
      end

      def get_users_keys_by_username(username, opt={})
        @http.get("/user/#{username}/keys", opt)
      end

      def get_users_repos_by_username(username, opt={})
        @http.get("/users/#{username}/repos", opt)
      end

      def get_users_starred_by_username(username, opt={})
        @http.get("/users/#{username}/starred", opt)
      end

      def get_users_subscriptions_by_username(username, opt={})
        @http.get("/users/#{username}/subscriptions", opt)
      end

      def get_users_tokens_by_username(username, opt={})
        @http.get("/users/#{username}/tokens", opt)
      end

      def post_users_tokens_by_username(username, opt={})
        @http.post("/users/#{username}/tokens", opt)
      end

      def delete_users_tokens_by_username_token(username, token, opt={})
        @http.delete("/users/#{username}/tokens/#{token}", opt)
      end

    end
  end # Api
end # Gitea