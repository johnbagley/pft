class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def new
    @article = Article.find(params[:article_id])
    @comment = @article.comments.new
  end

  def create
    article = Article.find(params[:article_id])
    comment = article.comments.create(comment_params)
    redirect_to article_path(article)
  end

  private

  def comment_params
    params.require(:comment).permit(:content).merge(user_id: current_user.id)
  end
end
