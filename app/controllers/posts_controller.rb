class PostsController < ApplicationController

# http_basic_authenticate_with :name => "hoovs152",
#                              :password => "hoovs152",
#                              :except => [:index, :show]
  def index
    @posts = Post.all
    render :index
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(params[:post])
      redirect_to(posts_url,
        :notice => 'Post was successfully updated.')
    else
      render action: 'edit'
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params[:post])
    if @post.save
      redirect_to @post, notice: 'Post was succcessfuly created.'
    else
      render :new
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_url
  end

end
