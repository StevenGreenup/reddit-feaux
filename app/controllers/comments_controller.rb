class CommentsController < ApplicationController
  def show
    @comment = Comment.find_by id: params[:id]

  end

  def new
    @comment = Comment.new
    @comment.post_id = params[:post_id]
    @comment.user_id = params[:user_id]

  end

  def create
    @comment = Comment.new
    @comment.user = params[:comment][:user]
    @comment.body = params[:comment][:body]
    @comment.post_id = params[:comment][:post_id]
    @comment.user_id = params[:comment][:user_id]

    if @comment.save
      redirect_to root_path
    else
      render :new
    end
  end


  def edit
  end

  def update
  end
end
