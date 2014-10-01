class ArticlesController < ApplicationController
  def new
    @article = Article.new
    @teams = Team.all
  end

  def create
    article = Article.create(article_params)
    redirect_to root_path
  end

  def show
    @article = Article.find(params[:id])
    @team = @article.team.id
    @team_name = @article.team.name
    @comments = Comment.all
  end
  private

  def article_params
    params.require(:article).permit(:title, :body, :team_id).merge(user_id: current_user.id)
  end
end
