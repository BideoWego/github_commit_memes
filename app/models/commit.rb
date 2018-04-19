class Commit < ApplicationRecord
  has_many :memes

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
