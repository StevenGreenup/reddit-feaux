class PostsController < ApplicationController

  def index
    @posts = Post.all
    # @post.user_id = params[:user_id]

  end

  def show
    @post = Post.find_by id: params[:id]
  end

  def new
    @post = Post.new
  end



  def create
    @post = Post.new
    @post.user_id = params[:post][:user_id]
    @post.title = params[:post][:title]
    @post.body = params[:post][:body]
    if @post.save
      redirect_to posts_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

end
