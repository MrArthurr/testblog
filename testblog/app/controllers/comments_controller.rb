class CommentsController < ApplicationController
  def show
    @comment = Comment.all
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to posts_path, success: 'Comment was created.'
    else
      render :new
    end
  end
  private

  def comment_params
    params.require(:comment).permit(:name, :comment)
  end
end
