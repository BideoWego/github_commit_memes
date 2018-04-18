module SearchesHelper
  def search_result_to_commit(q, search_result)
    OpenStruct.new(
      q: q,
      sha: search_result['sha'],
      message: search_result['commit']['message'],
      url: search_result['html_url'],
      user: search_result['author']['login'],
      user_url: search_result['author']['html_url'],
      repo: search_result['repository']['full_name'],
      repo_url: search_result['repository']['html_url'],
      committed_at: search_result['commit']['committer']['date']
    )
  end
end
