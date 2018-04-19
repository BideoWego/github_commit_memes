namespace :github do
  desc "Get the current rate limit for the Github API"
  task rate_limit: :environment do
    puts "Getting rate limit from Github API"
    rate_limit = GithubAPI.rate_limit
    puts JSON.pretty_generate(rate_limit)
    puts "Done"
  end
end
