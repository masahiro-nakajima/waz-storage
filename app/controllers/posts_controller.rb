class PostsController < ApplicationController

  #
  # GET /posts
  #
  def index
    @posts = Post.all
  end

  #
  # GET /posts/:id
  #
  def show
    @post = Post.find(params[:id])
  end

  #
  # GET /posts/new
  #
  def new
    @post = Post.new
  end

  #
  # POST /posts
  #
  def create
    @post = Post.new(params[:post])
    if @post.save
      redirect_to posts_path, :notice => "Create Post!"
    else
      render 'new'
    end
  end

  #
  # GET /posts/:id/edit
  #
  def edit
    @post = Post.find(params[:id])
  end


  #
  # PUT /posts/:id
  #
  def update
  end

  #
  # DELETE /posts/:id
  #
  def destroy
  end

end
