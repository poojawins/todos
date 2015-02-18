class CommentsController < ApplicationController
  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new(post_id: @post.id)
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to new_post_comment_path(@post.id)
    end
  end

private
  def comment_params
    params.require(:comment).permit(:body)
  end
end
