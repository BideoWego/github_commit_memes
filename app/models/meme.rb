class Meme < ApplicationRecord
  belongs_to :commit

  validates :url,
    :top_text,
    :bottom_text,
    :imgflip_url,
    :imgflip_id,
    :commit_id,
    presence: true
end
