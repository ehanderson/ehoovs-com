class CommentsController < ApplicationController
  http_basic_authenticate_with :name => "hoovs152",
                               :password => "hoovs152",
                               :only => :destroy

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(params[:comment])
    redirect_to posts_url
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to posts_url
  end

end
