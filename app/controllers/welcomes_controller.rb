class WelcomesController < ApplicationController
  def index
    @articles = Article.order(created_at: :desc)
    @teams = Team.all
  end
end

