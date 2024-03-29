module Gitea
  module Api
    module Repository
        def post_repos_migrate(opt = {})
          @http.post("/repos/migrate", opt)
        end

        def get_repos_search(opt = {})
          @http.get("/repos/search", opt)
        end

        def get_repos_by_owner_repo(owner, repo, opt = {})
          @http.get("/repos/#{owner}/#{repo}", opt)
        end

        def delete_repos_by_owner_repo(owner, repo, opt = {})
          @http.delete("/repos/#{owner}/#{repo}", opt)
        end

        def patch_repos_by_owner_repo(owner, repo, opt = {})
          @http.patch("/repos/#{owner}/#{repo}", opt)
        end

        def get_repos_archive_by_owner_repo_archive(owner, repo, archive, opt = {})
          @http.get("/repos/#{owner}/#{repo}/archive/#{archive}")
        end

        def get_repos_assignees_by_owner_repo(owner, repo, opt = {})
          @http.get("/repos/#{owner}/#{repo}/assignees", opt)
        end

        def get_repos_branch_protections_by_owner_repo(owner, repo, opt = {})
          @http.get("/repos/#{owner}/#{repo}/branch_protections", opt)
        end

        def post_repos_branch_protections_by_owner_repo(owner, repo, opt = {})
          @http.post("/repos/#{owner}/#{repo}/branch_protections", opt)
        end

        def get_repos_branch_protections_by_owner_repo_name(owner, repo, name, opt = {})
          @http.get("/repos/#{owner}/#{repo}/branch_protections/#{name}", opt)
        end

        def delete_repos_branch_protections_by_owner_repo_name(owner, repo, name, opt = {})
          @http.delete("/repos/#{owner}/#{repo}/branch_protections/#{name}", opt)
        end

        def patch_repos_branch_protections_by_owner_repo_name(owner, repo, name, opt = {})
          @http.patch("/repos/#{owner}/#{repo}/branch_protections/#{name}", opt)
        end

        def get_repos_branches_by_owner_repo(owner, repo, opt = {})
          @http.get("/repos/#{owner}/#{repo}/branches", opt)
        end

        def post_repos_branches_by_owner_repo(owner, repo, opt = {})
          @http.post("/repos/#{owner}/#{repo}/branches", opt)
        end

        def get_repos_branches_by_owner_repo_branch(owner, repo, branch, opt = {})
          @http.get("/repos/#{owner}/#{repo}/branches/#{branch}", opt)
        end

        def delete_repos_branches_by_owner_repo_branch(owner, repo, branch, opt = {})
          @http.delete("/repos/#{owner}/#{repo}/branches/#{branch}", opt)
        end

        def get_repos_collaborators_by_owner_repo(owner, repo, opt = {})
          @http.get("/repos/#{owner}/#{repo}/collaborators", opt)
        end

        def get_repos_collaborators_by_owner_repo_collaborator(owner, repo, collaborator, opt = {})
          @http.get("/repos/#{owner}/#{repo}/collaborators/#{collaborator}", opt)
        end

        def put_repos_collaborators_by_owner_repo_collaborator(owner, repo, collaborator, opt = {})
          @http.put("/repos/#{owner}/#{repo}/collaborators/#{collaborator}", opt)
        end

        def delete_repos_collaborators_by_owner_repo_collaborator(owner, repo, collaborator, opt = {})
          @http.delete("/repos/#{owner}/#{repo}/collaborators/#{collaborator}", opt)
        end

        def get_repos_pulls_files_by_owner_repo_index(owner, repo, index, opt = {})
          @http.get("/repos/#{owner}/#{repo}/pulls/#{index}/files", opt)
        end

        def get_repos_collaborators_permission_by_owner_repo_collaborator(owner, repo, collaborator, opt = {})
          @http.get("/repos/#{owner}/#{repo}/collaborators/#{collaborator}/permission", opt)
        end

        def get_repos_commits_by_owner_repo(owner, repo, opt = {})
          @http.get("/repos/#{owner}/#{repo}/commits", opt)
        end

        def get_repos_commits_status_by_owner_repo_ref(owner, repo, ref, opt = {})
          @http.get("/repos/#{owner}/#{repo}/commits/#{ref}/status", opt)
        end

        def get_repos_commits_statuses_by_owner_repo_ref(owner, repo, ref, opt = {})
          @http.get("/repos/#{owner}/#{repo}/commits/#{ref}/statuses", opt)
        end

        def get_repos_push_mirrors_by_owner_repo(owner, repo, opt = {})
          @http.get("/repos/#{owner}/#{repo}/push_mirrors", opt)
        end

        def post_repos_push_mirrors_by_owner_repo(owner, repo, opt = {})
          @http.post("/repos/#{owner}/#{repo}/push_mirrors", opt)
        end

        def get_repos_contents_by_owner_repo(owner, repo, opt = {})
          @http.get("/repos/#{owner}/#{repo}/contents", opt)
        end

        def post_repos_push_mirrors_sync_by_owner_repo(owner, repo, opt = {})
          @http.post("/repos/#{owner}/#{repo}/push_mirrors-sync", opt)
        end

        def get_repos_push_mirrors_by_owner_repo_name(owner, repo, name, opt = {})
          @http.get("/repos/#{owner}/#{repo}/push_mirrors/#{name}", opt)
        end

        def delete_repos_push_mirrors_by_owner_repo_name(owner, repo, name, opt = {})
          @http.delete("/repos/#{owner}/#{repo}/push_mirrors/#{name}", opt)
        end

        def get_repos_contents_by_owner_repo_filepath(owner, repo, filepath, opt = {})
          @http.get("/repos/#{owner}/#{repo}/contents/#{filepath}", opt)
        end

        def put_repos_contents_by_owner_repo_filepath(owner, repo, filepath, opt = {})
          @http.put("/repos/#{owner}/#{repo}/contents/#{filepath}", opt)
        end

        def post_repos_contents_by_owner_repo_filepath(owner, repo, filepath, opt = {})
          @http.post("/repos/#{owner}/#{repo}/contents/#{filepath}", opt)
        end

        def delete_repos_contents_by_owner_repo_filepath(owner, repo, filepath, opt = {})
          @http.delete("/repos/#{owner}/#{repo}/contents/#{filepath}", opt)
        end

        def post_repos_diffpatch_by_owner_repo(owner, repo, opt = {})
          @http.post("/repos/#{owner}/#{repo}/diffpatch", opt)
        end

        def get_repos_editorconfig_by_owner_repo_filepath(owner, repo, filepath, opt = {})
          @http.get("/repos/#{owner}/#{repo}/editorconfig/#{filepath}", opt)
        end

        def get_repos_forks_by_owner_repo(owner, repo, opt = {})
          @http.get("/repos/#{owner}/#{repo}/forks", opt)
        end

        def post_repos_forks_by_owner_repo(owner, repo, opt = {})
          @http.post("/repos/#{owner}/#{repo}/forks", opt)
        end

        def get_repos_git_blobs_by_owner_repo_sha(owner, repo, sha, opt = {})
          @http.get("/repos/#{owner}/#{repo}/git/blobs/#{sha}", opt)
        end

        def get_repos_git_commits_by_owner_repo_sha(owner, repo, sha, opt = {})
          @http.get("/repos/#{owner}/#{repo}/git/commits/#{sha}", opt)
        end

        def get_repos_git_commits_by_owner_repo_sha_difftype(owner, repo, sha, diffType, opt = {})
          @http.get("/repos/#{owner}/#{repo}/git/commits/#{sha}.#{diffType}", opt)
        end

        def get_repos_git_notes_by_owner_repo_sha(owner, repo, sha, opt = {})
          @http.get("/repos/#{owner}/#{repo}/git/notes/#{sha}", opt)
        end

        def get_repos_git_refs_by_owner_repo(owner, repo, opt = {})
          @http.get("/repos/#{owner}/#{repo}/git/refs", opt)
        end

        def get_repos_git_refs_by_owner_repo_ref(owner, repo, ref, opt = {})
          @http.get("/repos/#{owner}/#{repo}/git/refs/#{ref}", opt)
        end

        def get_repos_git_tags_by_owner_repo_sha(owner, repo, sha, opt = {})
          @http.get("/repos/#{owner}/#{repo}/git/tags/#{sha}", opt)
        end

        def get_repos_git_trees_by_owner_repo_sha(owner, repo, sha, opt = {})
          @http.get("/repos/#{owner}/#{repo}/git/trees/#{sha}", opt)
        end

        def get_repos_hooks_by_owner_repo(owner, repo, opt = {})
          @http.get("/repos/#{owner}/#{repo}/hooks", opt)
        end

        def post_repos_hooks_by_owner_repo(owner, repo, opt = {})
          @http.post("/repos/#{owner}/#{repo}/hooks", opt)
        end

        def get_repos_hooks_git_by_owner_repo(owner, repo, opt = {})
          @http.get("/repos/#{owner}/#{repo}/hooks/git", opt)
        end

        def get_repos_hooks_git_by_owner_repo_id(owner, repo, id, opt = {})
          @http.get("/repos/#{owner}/#{repo}/hooks/git/#{id}", opt)
        end

        def delete_repos_hooks_git_by_owner_repo_id(owner, repo, id, opt = {})
          @http.delete("/repos/#{owner}/#{repo}/hooks/git/#{id}", opt)
        end

        def patch_repos_hooks_git_by_owner_repo_id(owner, repo, id, opt = {})
          @http.patch("/repos/#{owner}/#{repo}/hooks/git/#{id}", opt)
        end 

        def get_repos_hooks_by_owner_repo_id(owner, repo, id, opt = {})
          @http.get("/repos/#{owner}/#{repo}/hooks/#{id}", opt)
        end

        def delete_repos_hooks_by_owner_repo_id(owner, repo, id, opt = {})
          @http.delete("/repos/#{owner}/#{repo}/hooks/#{id}", opt)
        end

        def patch_repos_hooks_by_owner_repo_id(owner, repo, id, opt = {})
          @http.patch("/repos/#{owner}/#{repo}/hooks/#{id}", opt)
        end

        def post_repos_hooks_tests_by_owner_repo_id(owner, repo, id, opt = {})
          @http.post("/repos/#{owner}/#{repo}/hooks/#{id}/tests", opt)
        end

        def get_repos_issue_templates_by_owner_repo(owner, repo, opt = {})
          @http.get("/repos/#{owner}/#{repo}/issue_templates", opt)
        end

        def get_repos_keys_by_owner_repo(owner, repo, opt = {})
          @http.get("/repos/#{owner}/#{repo}/keys", opt)
        end

        def post_repos_keys_by_owner_repo(owner, repo, opt = {})
          @http.post("/repos/#{owner}/#{repo}/keys", opt)
        end

        def get_repos_keys_by_owner_repo_id(owner, repo, id, opt = {})
          @http.get("/repos/#{owner}/#{repo}/keys/#{id}", opt)
        end

        def delete_repos_keys_by_owner_repo_id(owner, repo, id, opt = {})
          @http.delete("/repos/#{owner}/#{repo}/keys/#{id}", opt)
        end

        def get_repos_languages_by_owner_repo(owner, repo, opt = {})
          @http.get("/repos/#{owner}/#{repo}/languages", opt)
        end

        def get_repos_media_by_owner_repo_filepath(owner, repo, filepath, opt = {})
          @http.get("/repos/#{owner}/#{repo}/media/#{filepath}", opt)
        end

        def post_repos_mirror_sysnc_by_owner_repo(owner, repo, opt = {})
          @http.post("/repos/#{owner}/#{repo}/mirror-sync", opt)
        end

        def get_repos_pulls_by_owner_repo(owner, repo, opt = {})
          @http.get("/repos/#{owner}/#{repo}/pulls", opt)
        end

        def post_repos_pulls_by_owner_repo(owner, repo, opt = {})
          @http.post("/repos/#{owner}/#{repo}/pulls", opt)
        end

        def patch_repos_pulls_by_owner_repo_index(owner, repo, index, opt = {})
          @http.patch("/repos/#{owner}/#{repo}/pulls/#{index}", opt)
        end

        def get_repos_pulls_by_owner_repo_index_difftype(owner, repo, index, diffType, opt = {})
          @http.get("/repos/#{owner}/#{repo}/pulls/#{index}.#{diffType}", opt)
        end

        def get_repos_pulls_commits_by_owner_repo_index(owner, repo, index, opt = {})
          @http.get("/repos/#{owner}/#{repo}/pulls/#{index}/commits", opt)
        end

        def get_repos_pulls_merge_by_owner_repo_index(owner, repo, index, opt = {})
          @http.get("/repos/#{owner}/#{repo}/pulls/#{index}/merge", opt)
        end

        def post_repos_pulls_merge_by_owner_repo_index(owner, repo, index, opt = {})
          @http.post("/repos/#{owner}/#{repo}/pulls/#{index}/merge", opt)
        end

        def delete_repos_pulls_merge_by_owner_repo_index(owner, repo, index, opt = {})
          @http.delete("/repos/#{owner}/#{repo}/pulls/#{index}/merge", opt)
        end

        def post_repos_pulls_requested_reviewers_by_owner_repo_index(owner, repo, index, opt = {})
          @http.post("/repos/#{owner}/#{repo}/pulls/#{index}/requested_reviewers", opt)
        end

        def delete_repos_pulls_requested_reviewers_by_owner_repo_index(owner, repo, index, opt = {})
          @http.delete("/repos/#{owner}/#{repo}/pulls/#{index}/requested_reviewers", opt)
        end

        def get_repos_pulls_reviews_by_owner_repo_index(owner, repo, index, opt = {})
          @http.get("/repos/#{owner}/#{repo}/pulls/#{index}/reviews", opt)
        end

        def post_repos_pulls_reviews_by_owner_repo_index(owner, repo, index, opt = {})
          @http.post("/repos/#{owner}/#{repo}/pulls/#{index}/reviews", opt)
        end

        def get_repos_pulls_reviews_by_owner_repo_index_id(owner, repo, index, id, opt = {})
          @http.get("/repos/#{owner}/#{repo}/pulls/#{index}/reviews/#{id}", opt)
        end

        def post_repos_pulls_reviews_by_owner_repo_index_id(owner, repo, index, opt = {})
          @http.post("/repos/#{owner}/#{repo}/pulls/#{index}/reviews/#{id}", opt)
        end

        def delete_repos_pulls_reviews_by_owner_repo_index(owner, repo, index, opt = {})
          @http.delete("/repos/#{owner}/#{repo}/pulls/#{index}/reviews", opt)
        end

        def get_repos_pulls_reviews_comments_by_owner_repo_index_id(owner, repo, index, id, opt = {})
          @http.get("/repos/#{owner}/#{repo}/pulls/#{index}/reviews/#{id}/comments", opt)
        end

        def post_repos_pulls_reviews_dismissals_by_owner_repo_index_id(owner, repo, index, id, opt = {})
          @http.post("/repos/#{owner}/#{repo}/pulls/#{index}/reviews/#{id}/dismissals", opt)
        end

        def post_repos_pulls_reviews_undismissals_by_owner_repo_index_id(owner, repo, index, id, opt = {})
          @http.post("/repos/#{owner}/#{repo}/pulls/#{index}/reviews/#{id}/undismissals", opt)
        end

        def post_repos_pulls_update_by_owner_repo_index(owner, repo, index, opt = {})
          @http.post("/repos/#{owner}/#{repo}/pulls/#{index}/update", opt)
        end

        def get_repos_raw_by_owner_repo_filepath(owner, repo, filepath, opt = {})
          @http.get("/repos/#{owner}/#{repo}/raw/#{filepath}", opt)
        end

        def get_repos_releases_by_owner_repo(owner, repo, opt = {})
          @http.get("/repos/#{owner}/#{repo}/releases", opt)
        end

        def post_repos_releases_by_owner_repo(owner, repo, opt = {})
          @http.post("/repos/#{owner}/#{repo}/releases", opt)
        end

        def get_repos_releases_tags_by_owner_repo_tag(owner, repo, tag, opt = {})
          @http.get("/repos/#{owner}/#{repo}/releases/tags/#{tag}", opt)
        end

        def delete_repos_releases_tags_by_owner_repo_tag(owner, repo, tag, opt = {})
          @http.delete("/repos/#{owner}/#{repo}/releases/tags/#{tag}", opt)
        end

        def get_repos_releases_by_owner_repo_id(owner, repo, id, opt = {})
          @http.get("/repos/#{owner}/#{repo}/releases/#{id}", opt)
        end

        def delete_repos_releases_by_owner_repo_id(owner, repo, id, opt = {})
          @http.delete("/repos/#{owner}/#{repo}/releases/#{id}", opt)
        end

        def patch_repos_releases_by_owner_repo_id(owner, repo, id, opt = {})
          @http.patch("/repos/#{owner}/#{repo}/releases/#{id}", opt)
        end

        def get_repos_releases_assets_by_owner_repo_id(owner, repo, id, opt = {})
          @http.get("/repos/#{owner}/#{repo}/releases/#{id}/assets", opt)
        end

        def post_repos_releases_assets_by_owner_repo_id(owner, repo, id, opt = {})
          @http.post("/repos/#{owner}/#{repo}/releases/#{id}/assets", opt)
        end

        def get_repos_releases_assets_by_owner_repo_id_attachment_id(owner, repo, id, attachment_id, opt = {})
          @http.get("/repos/#{owner}/#{repo}/releases/#{id}/assets/#{attachment_id}", opt)
        end

        def delete_repos_releases_assets_by_owner_repo_id_attachment_id(owner, repo, id, attachment_id, opt = {})
          @http.delete("/repos/#{owner}/#{repo}/releases/#{id}/assets/#{attachment_id}", opt)
        end

        def patch_repos_releases_assets_by_owner_repo_id_attachment_id(owner, repo, id, attachment_id, opt = {})
          @http.patch("/repos/#{owner}/#{repo}/releases/#{id}/assets/#{attachment_id}", opt)
        end

        def get_repos_reviewers_by_owner_repo(owner, repo, opt = {})
          @http.get("/repos/#{owner}/#{repo}/reviewers", opt)
        end

        def get_repos_signing_key_gpg_by_owner_repo(owner, repo, opt = {})
          @http.get("/repos/#{owner}/#{repo}/signing-key.gpg", opt)
        end

        def get_repos_stargazers_by_owner_repo(owner, repo, opt = {})
          @http.get("/repos/#{owner}/#{repo}/stargazers", opt)
        end

        def get_repos_statuses_by_owner_repo_sha(owner, repo, sha, opt = {})
          @http.get("/repos/#{owner}/#{repo}/statuses/#{sha}", opt)
        end

        def post_repos_statuses_by_owner_repo_sha(owner, repo, sha, opt = {})
          @http.post("/repos/#{owner}/#{repo}/statuses/#{sha}", opt)
        end

        def get_repos_subscribers_by_owner_repo(owner, repo, opt = {})
          @http.get("/repos/#{owner}/#{repo}/subscribers", opt)
        end

        def get_repos_subscription_by_owner_repo(owner, repo, opt = {})
          @http.get("/repos/#{owner}/#{repo}/subscription", opt)
        end

        def put_repos_subscription_by_owner_repo(owner, repo, opt = {})
          @http.put("/repos/#{owner}/#{repo}/subscription", opt)
        end

        def delete_repos_subscription_by_owner_repo(owner, repo, opt = {})
          @http.delete("/repos/#{owner}/#{repo}/subscription", opt)
        end

        def get_repos_tags_by_owner_repo(owner, repo, opt = {})
          @http.get("/repos/#{owner}/#{repo}/tags", opt)
        end

        def post_repos_tags_by_owner_repo(owner, repo, opt = {})
          @http.post("/repos/#{owner}/#{repo}/tags", opt)
        end

        def get_repos_tags_by_owner_repo_tag(owner, repo, tag, opt = {})
          @http.get("/repos/#{owner}/#{repo}/tags/#{tag}", opt)
        end

        def delete_repos_tags_by_owner_repo_tag(owner, repo, tag, opt = {})
          @http.delete("/repos/#{owner}/#{repo}/tags/#{tag}", opt)
        end

        def get_repos_teams_by_owner_repo(owner, repo, opt = {})
          @http.get("/repos/#{owner}/#{repo}/teams", opt)
        end

        def get_repos_teams_by_owner_repo_team(owner, repo, team, opt = {})
          @http.get("/repos/#{owner}/#{repo}/teams/#{team}", opt)
        end

        def put_repos_teams_by_owner_repo_team(owner, repo, team, opt = {})
          @http.put("/repos/#{owner}/#{repo}/teams/#{team}", opt)
        end

        def delete_repos_teams_by_owner_repo_team(owner, repo, team, opt = {})
          @http.delete("/repos/#{owner}/#{repo}/teams/#{team}", opt)
        end

        def get_repos_times_by_owner_repo(owner, repo, opt = {}) 
          @http.get("/repos/#{owner}/#{repo}/times", opt)
        end

        def get_repos_topics_by_owner_repo(owner, repo, opt = {})
          @http.get("/repos/#{owner}/#{repo}/topics", opt)
        end

        def put_repos_topics_by_owner_repo(owner, repo, opt = {})
          @http.put("/repos/#{owner}/#{repo}/topics", opt)
        end

        def put_repos_topics_by_owner_repo_topic(owner, repo, topic, opt = {})
          @http.put("/repos/#{owner}/#{repo}/topics/#{topic}", opt)
        end

        def delete_repos_topics_by_owner_repo_topic(owner, repo, topic, opt = {})
          @http.delete("/repos/#{owner}/#{repo}/topics/#{topic}", opt)
        end

        def post_repos_transfer_by_owner_repo(owner, repo, opt = {})
          @http.post("/repos/#{owner}/#{repo}/transfer", opt)
        end

        def post_repos_transfer_accept_by_owner_repo(owner, repo, opt = {})
          @http.post("/repos/#{owner}/#{repo}/transfer/accept", opt)
        end

        def post_repos_transfer_reject_by_owner_repo(owner, repo, opt = {})
          @http.post("/repos/#{owner}/#{repo}/transfer/reject", opt)
        end

        def post_repos_wiki_new_by_owner_repo(owner, repo, opt = {})
          @http.post("/repos/#{owner}/#{repo}/wiki/new", opt)
        end

        def get_repos_wiki_page_by_owner_repo_pagename(owner, repo, pageName, opt = {})
          @http.get("/repos/#{owner}/#{repo}/wiki/page/#{pageName}", opt)
        end

        def delete_repos_wiki_page_by_owner_repo_pagename(owner, repo, pageName, opt = {})
          @http.delete("/repos/#{owner}/#{repo}/wiki/page/#{pageName}", opt)
        end

        def patch_repos_wiki_page_by_owner_repo_pagename(owner, repo, pageName, opt = {})
          @http.patch("/repos/#{owner}/#{repo}/wiki/page/#{pageName}", opt)
        end

        def get_repos_wiki_pages_by_owner_repo(owner, repo, opt = {})
          @http.get("/repos/#{owner}/#{repo}/wiki/pages", opt)
        end

        def get_repos_wiki_revisions_owner_repo_pagename(owner, repo, pageName, opt = {})
          @http.get("/repos/#{owner}/#{repo}/wiki/revisions/#{pageName}", opt)
        end

        def post_repos_generate_by_template_owner_repo(temp_owner, temp_repo, opt = {})
          @http.post("/repos/#{temp_owner}/#{temp_repo}/generate", opt)
        end

        def get_repositories_by_id(id, opt = {})
          @http.get("/repositories/#{id}", opt)
        end

        def get_topics_search(opt = {})
          @http.get("/topics/search", opt)
        end

        def post_user_repos(opt = {})
          @http.post("/user/repos", opt)
        end
    end # Repository 
  end # Api 
end # Gitea