class SearchesController < ApplicationController
  def index
    @q = params[:q]
    if @q && @q.length > 2
      @results = GithubAPI.search_commits(@q)
    else
      @results = []
    end
  end
end
