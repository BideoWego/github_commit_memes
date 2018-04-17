module Meme
  IMGFLIP_API_USERNAME = ENV['IMGFLIP_API_USERNAME']
  IMGFLIP_API_PASSWORD = ENV['IMGFLIP_API_PASSWORD']
  IMGFLIP_API_ENDPOINT = 'https://api.imgflip.com'

  def self.username
    IMGFLIP_API_USERNAME
  end

  def self.password
    IMGFLIP_API_PASSWORD
  end

  def self.api_url
    IMGFLIP_API_ENDPOINT
  end

  def self.create(bottom_text)
    HTTParty.post(
      "#{ api_url }/caption_image",
      body: {
        template_id: 61579,
        username: username,
        password: password,
        text0: "One does not simply",
        text1: bottom_text
      },
      headers: {
        'User-Agent': 'NoBot E-Special'
      }
    )
  end
end
