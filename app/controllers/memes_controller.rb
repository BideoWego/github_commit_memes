class MemesController < ApplicationController
  def show
    meme = Meme.create(params[:text])
    @img_url = meme.parsed_response['data']['url']
  end
end
