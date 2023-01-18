module Gitea 
  module Api 
    module Hat 
      module Repository 
        def get_repos_contents_by_owner_repo(owner, repo, opt = {})
          @http.get("/repos/#{owner}/#{repo}/contents", opt)
        end

        def get_repos_contents_by_owner_repo_filepath(owner, repo, filepath, opt = {})
          @http.get("/repos/#{owner}/#{repo}/contents/#{filepath}", opt)
        end

        def get_repos_find_by_owner_repo(owner, repo, opt = {})
          @http.get("/repos/#{owner}/#{repo}/find", opt)
        end

        def get_repos_git_commits_by_owner_repo_sha(owner, repo, sha, opt = {})
          @http.get("/repos/#{owner}/#{repo}/git/commits/#{sha}", opt)
        end 

        def get_repos_commits_diff_by_owner_repo_sha(owner, repo, sha, opt = {})
          @http.get("/repos/#{owner}/#{repo}/commits/#{sha}/diff", opt)
        end

        def post_repos_hooks_by_owner_repo(owner, repo, opt = {}) 
          @http.post("/repos/#{owner}/#{repo}/hooks", opt)
        end 

        def get_repos_hooks_hooktasks_by_owner_repo_id(owner, repo, id, opt = {})
          @http.get("/repos/#{owner}/#{repo}/hooks/#{id}/hooktasks", opt)
        end

        def get_repos_releases_latest_by_owner_repo(owner, repo, opt = {})
          @http.get("/repos/#{owner}/#{repo}/releases/latest", opt)
        end

        def get_repos_releases_by_owner_repo(owner, repo, opt = {})
          @http.get("/repos/#{owner}/#{repo}/releases", opt)
        end

        def get_repos_releases_by_owner_repo_id(owner, repo, opt = {})
          @http.get("/repos/#{owner}/#{repo}/releases/#{id}", opt)
        end

        def post_repos_releases_by_owner_repo(owner, repo, opt = {})
          @http.post("/repos/#{owner}/#{repo}/releases", opt)
        end

        def patch_repos_releases_by_owner_repo_id(owner, repo, id, opt = {})
          @http.patch("/repos/#{owner}/#{repo}/releases/#{id}", opt)
        end

        def get_repos_branch_name_set_by_owner_repo(owner, repo, opt = {})
          @http.get("/repos/#{owner}/#{repo}/branch_name_set", opt)
        end

        def get_repos_branches_branches_slice_by_owner_repo(owner, repo, opt = {})
          @http.get("/repos/#{owner}/#{repo}/branches/branches_slice", opt)
        end

        def get_repos_tag_name_set_by_owner_repo(owner, repo, opt = {})
          @http.get("/repos/#{owner}/#{repo}/tag_name_set", opt)
        end

        def get_repos_tags_by_owner_repo(owner, repo, opt = {})
          @http.get("/repos/#{owner}/#{repo}/tags", opt)
        end

        def get_repos_branch_tag_count_by_owner_repo(owner, repo, opt = {})
          @http.get("/repos/#{owner}/#{repo}/branch_tag_count", opt)
        end

        def get_repos_readme_by_owner_repo(owner, repo, opt = {})
          @http.get("/repos/#{owner}/#{repo}/readme", opt)
        end

        def get_repos_readme_by_owner_repo_filepath(owner, repo, filepath, opt = {})
          @http.get("/repos/#{owner}/#{repo}/readme/#{filepath}", opt)
        end

        def get_repos_commits_slice_by_owner_repo(owner, repo, filepath, opt = {})
          @http.get("/repos/#{owner}/#{repo}/commits_slice", opt)
        end

        def get_repos_contributors_by_owner_repo(owner, repo, opt = {})
          @http.get("/repos/#{owner}/#{repo}/contributors", opt)
        end

        def get_repos_count_by_owner_repo(owner, repo, opt = {})
          @http.get("/repos/#{owner}/#{repo}/count", opt)
        end

        def get_repos_file_commits_by_owner_repo_filepath(owner, repo, filepath, opt = {})
          @http.get("/repos/#{owner}/#{repo}/file_commits/#{filepath}", opt)
        end

        def get_repos_blame_by_owner_repo(owner, repo, opt = {})
          @http.get("/repos/#{owner}/#{repo}/blame", opt)
        end

        def get_repos_compare_by_owner_repo_baseref_headref(owner, repo, baseRef, headRef, opt = {})
          @http.get("/repos/#{owner}/#{repo}/compare/#{baseRef}...#{headRef}", opt)
        end

        def post_repos_transfer_by_owner_repo(owner, repo, opt = {})
          @http.post("/repos/#{owner}/#{repo}/transfer", opt)
        end

        def get_repos_pulls_by_owner_repo_index(owner, repo, index, opt = {})
          @http.get("/repos/#{owner}/#{repo}/pulls/#{index}", opt)
        end

        def get_repos_pulls_commits_by_owner_repo_index(owner, repo, index, opt = {})
          @http.get("/repos/#{owner}/#{repo}/pulls/#{index}/commits", opt)
        end

        def get_repos_pulls_files_by_owner_repo_index(owner, repo, index, opt = {})
          @http.get("/repos/#{owner}/#{repo}/pulls/#{index}/files", opt)
        end

        def get_repos_wikies_by_owner_repo(owner, repo, opt = {})
          @http.get("/repos/#{owner}/#{repo}/wikies", opt)
        end

        def post_repos_wikies_by_owner_repo(owner, repo, opt = {})
          @http.post("/repos/#{owner}/#{repo}/wikies", opt)
        end

        def patch_repos_wikies_by_owner_repo_pagename(owner, repo, pageName, opt = {})
          @http.patch("/repos/#{owner}/#{repo}/wikies/#{pageName}", opt)
        end

        def get_repos_wikies_by_owner_repo_pagename(owner, repo, pageName, opt = {})
          @http.get("/repos/#{owner}/#{repo}/wikies/#{pageName}", opt)
        end

        def delete_repos_wikies_by_owner_repo_pagename(owner, repo, pageName, opt = {})
          @http.delete("/repos/#{owner}/#{repo}/wikies/#{pageName}", opt)
        end

        def post_repos_contents_batch_by_owner_repo(owner, repo, opt = {})
          @http.post("/repos/#{owner}/#{repo}/contents/batch", opt)
        end

        def get_repos_pulls_versions_by_owner_repo_index(owner, repo, index, opt = {})
          @http.get("/repos/#{owner}/#{repo}/pulls/#{index}/versions", opt)
        end

        def get_repos_pulls_versions_diff_by_owner_repo_index_id(owner, repo, index, versionID, opt = {})
          @http.get("/repos/#{owner}/#{repo}/pulls/#{index}/versions/#{versionID}/diff", opt)
        end

      end # Repository 
    end # Hat 
  end # Api 
end # Gitea