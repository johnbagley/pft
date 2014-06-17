class TeamsController < ApplicationController
  def index
    @teams = Team.all
    @divisions = Team.divisions
  end

  def show
    @team = Team.find(params[:id])
    @articles = @team.articles.order(created_at: :desc)
  end

end
