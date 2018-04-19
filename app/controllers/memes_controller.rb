class MemesController < ApplicationController
  def index
    @memes = Meme.all
  end

  def show
    @meme = Meme.find_by_id(params[:id])
    unless @meme
      flash[:error] = "Meme not found"
      redirect_to memes_path
    end
  end

  def preview
    meme = MemeAPI.create(params[:text])
    @meme = Meme.new(
      url: meme['data']['url'],
      top_text: 'One does not simply',
      bottom_text: params[:text],
      imgflip_url: meme['data']['page_url'],
      imgflip_id: 61579,
      commit_id: params[:commit_id]
    )
    @img_url = meme['data']['url']
  end

  def create
    @meme = Meme.new(meme_params)
    if @meme.save
      flash[:success] = "Meme created!"
      redirect_to @meme
    else
      flash[:error] = "Error: " + @meme.errors.full_messages.join(', ')
      redirect_to :back
    end
  end


  private
  def meme_params
    params.require(:meme).permit(
      :url,
      :top_text,
      :bottom_text,
      :imgflip_url,
      :imgflip_id,
      :commit_id
    )
  end
end
