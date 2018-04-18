class Commit < ApplicationRecord
  validates :q,
    :sha,
    :url,
    :message,
    :user,
    :user_url,
    :repo,
    :repo_url,
    :committed_at,
    presence: true
end
