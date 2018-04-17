module GithubAPI
  GITHUB_API_KEY = ENV['GITHUB_API_KEY']
  GITHUB_API_ENDPOINT = 'https://api.github.com'
  USER_AGENT = 'No Bot E-Special'
  DEFAULT_HEADERS = {
    'User-Agent' => USER_AGENT
  }
  COMMIT_HEADERS = {
    'Accept' => 'application/vnd.github.cloak-preview'
  }.merge(DEFAULT_HEADERS)


  def self.api_key
    GITHUB_API_KEY
  end

  def self.api_url
    GITHUB_API_ENDPOINT
  end

  def self.default_headers
    DEFAULT_HEADERS
  end

  def self.commit_headers
    COMMIT_HEADERS
  end

  def self.search_commits(q)
    HTTParty.get(
      "#{ api_url }/search/commits",
      query: {
        q: q,
        access_token: api_key
      },
      headers: commit_headers
    )
  end
end
