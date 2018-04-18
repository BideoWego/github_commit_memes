class CommitsController < ApplicationController
  def index
    @commits = Commit.all
  end


  def create
    @commit = Commit.new(commit_params)
    if @commit.save
      flash[:success] = "Commit created!"
    else
      flash[:error] = @commit.errors.full_messages.join(', ')
    end
    redirect_to commits_path
  end


  private
  def commit_params
    params.require(:commit).permit(
      :q,
      :sha,
      :url,
      :message,
      :user,
      :user_url,
      :repo,
      :repo_url,
      :committed_at,
    )
  end
end
