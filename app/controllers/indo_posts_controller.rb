class IndoPostsController < ApplicationController

  def index
    @indo_posts = IndoPost.all

  end

  def edit
    @indo_post = IndoPost.find(params[:id])
  end

  def update
    @indo_post = IndoPost.find(params[:id])
    if @indo_post.update_attributes(params[:indo_post])
      redirect_to(indo_posts_url,
        :notice => 'Indonesia Post was successfully updated.')
    else
      render action: 'edit'
    end
  end

  def show
    @indo_post = IndoPost.find(params[:id])
  end

  def new
    @indo_post = IndoPost.new
  end

  def create
    @indo_post = IndoPost.new(params[:indo_post])
    if @indo_post.save
      redirect_to @indo_post, notice: 'Indonesia Post was succcessfuly created.'
    else
      render :new
    end
  end

  def destroy
    @indo_post = IndoPost.find(params[:id])
    @indo_post.destroy
    redirect_to indo_posts_url
  end

end
