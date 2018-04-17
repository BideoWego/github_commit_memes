class SearchesController < ApplicationController
  def index
    if params[:q]
      @q = params[:q]
      @results = GithubAPI.search_commits(@q)
    else
      @results = []
    end
  end
end
