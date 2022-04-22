module Gitea
  module Api
    module Issue 
      def get_repos_issues_search(opt = {})
        @http.get("/repos/issues/search", opt)
      end

      def get_repos_issues_by_owner_repo(owner, repo, opt = {})
        @http.get("/repos/#{owner}/#{repo}/issues", opt)
      end

      def post_repos_issues_by_owner_repo(owner, repo, opt = {})
        @http.post("/repos/#{owner}/#{repo}/issues", opt)
      end

      def get_repos_issues_comments_by_owner_repo(owner, repo, opt = {})
        @http.get("/repos/#{owner}/#{repo}/issues/comments", opt)
      end

      def get_repos_issues_comments_by_owner_repo_id(owner, repo, id, opt = {})
        @http.get("/repos/#{owner}/#{repo}/issues/comments/#{id}", opt)
      end

      def delete_repos_issues_comments_by_owner_repo_id(owner, repo, id, opt = {})
        @http.delete("/repos/#{owner}/#{repo}/issues/comments/#{id}", opt)
      end

      def patch_repos_issues_comments_by_owner_repo_id(owner, repo, id, opt = {})
        @http.patch("/repos/#{owner}/#{repo}/issues/comments/#{id}", opt)
      end

      def get_repos_issues_comments_reactions_by_owner_repo_id(owner, repo, id, opt = {})
        @http.get("/repos/#{owner}/#{repo}/issues/comments/#{id}/reactions", opt)
      end

      def post_repos_issues_comments_reactions_by_owner_repo_id(owner, repo, id, opt = {})
        @http.post("/repos/#{owner}/#{repo}/issues/comments/#{id}/reactions", opt)
      end

      def delete_repos_issues_comments_reactions_by_owner_repo_id(owner, repo, id, opt = {})
        @http.delete("/repos/#{owner}/#{repo}/issues/comments/#{id}/reactions", opt)
      end

      def get_repos_issues_by_owner_repo_index(owner, repo, index, opt = {})
        @http.get("/repos/#{owner}/#{repo}/issues/#{index}", opt)
      end

      def patch_repos_issues_by_owner_repo_index(owner, repo, index, opt = {})
        @http.patch("/repos/#{owner}/#{repo}/issues/#{index}", opt)
      end

      def get_repos_issues_comments_by_owner_repo_index(owner, repo, index, opt = {})
        @http.get("/repos/#{owner}/#{repo}/issues/#{index}/comments", opt)
      end

      def post_repos_issues_comments_by_owner_repo_index(owner, repo, index, opt = {})
        @http.post("/repos/#{owner}/#{repo}/issues/#{index}/comments", opt)
      end

      def post_repos_issues_deadline_by_owner_repo_index(owner, repo, index, opt = {})
        @http.post("/repos/#{owner}/#{repo}/issues/#{index}/deadline", opt)
      end

      def get_repos_issues_labels_by_owner_repo_index(owner, repo, index, opt = {})
        @http.get("/repos/#{owner}/#{repo}/issues/#{index}/labels", opt)
      end

      def put_repos_issues_labels_by_owner_repo_index(owner, repo, index, opt = {})
        @http.put("/repos/#{owner}/#{repo}/issues/#{index}/labels", opt)
      end

      def post_repos_issues_labels_by_owner_repo_index(owner, repo, index, opt = {})
        @http.post("/repos/#{owner}/#{repo}/issues/#{index}/labels", opt)
      end

      def delete_repos_issues_labels_by_owner_repo_index(owner, repo, index, opt = {})
        @http.delete("/repos/#{owner}/#{repo}/issues/#{index}/labels", opt)
      end

      def delete_repos_issues_labels_by_owner_repo_index_id(owner, repo, index, id, opt = {})
        @http.delete("/repos/#{owner}/#{repo}/issues/#{index}/labels/#{id}", opt)
      end

      def get_repos_issues_reactions_by_owner_repo_index(owner, repo, index, opt = {})
        @http.get("/repos/#{owner}/#{repo}/issues/#{index}/reactions", opt)
      end

      def post_repos_issues_reactions_by_owner_repo_index(owner, repo, index, opt = {})
        @http.post("/repos/#{owner}/#{repo}/issues/#{index}/reactions", opt)
      end

      def delete_repos_issues_reactions_by_owner_repo_index(owner, repo, index, opt = {})
        @http.delete("/repos/#{owner}/#{repo}/issues/#{index}/reactions", opt)
      end

      def delete_repos_issues_stopwatch_delete_by_owner_repo_index(owner, repo, index, opt = {})
        @http.delete("/repos/#{owner}/#{repo}/issues/#{index}/stopwatch/delete", opt)
      end 

      def post_repos_issues_stopwatch_start_by_owner_repo_index(owner, repo, index, opt = {})
        @http.post("/repos/#{owner}/#{repo}/issues/#{index}/stopwatch/start", opt)
      end

      def post_repos_issues_stopwatch_stop_by_owner_repo_index(owner, repo, index, opt = {})
        @http.post("/repos/#{owner}/#{repo}/issues/#{index}/stopwatch/stop", opt)
      end

      def get_repos_issues_subscriptions_by_owner_repo_index(owner, repo, index, opt = {})
        @http.get("/repos/#{owner}/#{repo}/issues/#{index}/subscriptions", opt)
      end

      def get_repos_issues_subscriptions_check_by_owner_repo_index(owner, repo, index, opt = {})
        @http.get("/repos/#{owner}/#{repo}/issues/#{index}/subscriptions/check", opt)
      end

      def put_repos_issues_subscriptions_by_owner_repo_index_user(owner, repo, index, user, opt = {})
        @http.put("/repos/#{owner}/#{repo}/issues/#{index}/subscriptions/#{user}", opt)
      end

      def delete_repos_issues_subscriptions_by_owner_repo_index_user(owner, repo, index, user, opt = {})
        @http.delete("/repos/#{owner}/#{repo}/issues/#{index}/subscriptions/#{user}", opt)
      end

      def get_repos_issues_times_by_owner_repo_index(owner, repo, index, opt = {})
        @http.get("/repos/#{owner}/#{repo}/issues/#{index}/times", opt)
      end

      def post_repos_issues_times_by_owner_repo_index(owner, repo, index, opt = {})
        @http.post("/repos/#{owner}/#{repo}/issues/#{index}/times", opt)
      end

      def delete_repos_issues_times_by_owner_repo_index(owner, repo, index, opt = {})
        @http.delete("/repos/#{owner}/#{repo}/issues/#{index}/times", opt)
      end

      def delete_repos_issues_times_by_owner_repo_index_id(owner, repo, index, id, opt = {})
        @http.delete("/repos/#{owner}/#{repo}/issues/#{index}/times/#{id}", opt)
      end

      def get_repos_labels_by_owner_repo(owner, repo, opt = {})
        @http.get("/repos/#{owner}/#{repo}/labels", opt)
      end

      def post_repos_labels_by_owner_repo(owner, repo, opt = {})
        @http.post("/repos/#{owner}/#{repo}/labels", opt)
      end

      def get_repos_labels_by_owner_repo_id(owner, repo, id, opt = {})
        @http.get("/repos/#{owner}/#{repo}/labels/#{id}", opt)
      end

      def delete_repos_labels_by_owner_repo_id(owner, repo, id, opt = {})
        @http.delete("/repos/#{owner}/#{repo}/labels/#{id}", opt)
      end

      def patch_repos_labels_by_owner_repo_id(owner, repo, id, opt = {})
        @http.patch("/repos/#{owner}/#{repo}/labels/#{id}", opt)
      end

      def get_repos_milestones_by_owner_repo(owner, repo, opt = {})
        @http.get("/repos/#{owner}/#{repo}/milestones", opt)
      end

      def post_repos_milestones_by_owner_repo(owner, repo, opt = {})
        @http.post("/repos/#{owner}/#{repo}/milestones", opt)
      end

      def get_repos_milestones_by_owner_repo_id(owner, repo, id, opt = {})
        @http.get("/repos/#{owner}/#{repo}/milestones/#{id}", opt)
      end

      def delete_repos_milestones_by_owner_repo_id(owner, repo, id, opt = {})
        @http.delete("/repos/#{owner}/#{repo}/milestones/#{id}", opt)
      end

      def patch_repos_milestones_by_owner_repo_id(owner, repo, id, opt = {})
        @http.patch("/repos/#{owner}/#{repo}/milestones/#{id}", opt)
      end
    end # Issue
  end # Api
end # Gitea