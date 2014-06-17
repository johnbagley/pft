class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def new
    @user = User.find(params[:user_id])
    @comment = Comment.new
  end

  def create
    user = User.find(params[:user_id])
    comment = user.comments.create(comment_params)
    redirect_to article_path(:article_id)
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
