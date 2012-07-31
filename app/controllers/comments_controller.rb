class CommentsController < ApplicationController
  skip_before_filter :authorize

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(params[:comment])
#    @comment.comment_time = Time.now
    redirect_to post_path(@post)
  end
end
