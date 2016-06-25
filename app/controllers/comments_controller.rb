class CommentsController < ApplicationController
  def show
    @comment = Comment.find_by id: params[:id]
    @comment.post_id = params[:post_id]
  end

  def new
    @comment = Comment.new
    @comment.post_id = params[:post_id]
    @comment.user_id = params[:user_id]

  end

  def create
    @comment = Comment.new
    @comment.post_id = params[:post_id]
    @comment.user = params[:comment][:user]
    @comment.body = params[:comment][:body]
    @comment.user_id = params[:comment][:user_id]

    if @comment.save
      redirect_to post_path(id: @comment.post_id)
    else
      render :new
    end
  end


  def edit
  end

  def update
  end

  def upvote
    @comment = Comment.find_by id: params[:id]
    @comment.upvote += 1
      if @comment.save
        redirect_to post_path(id: @comment.post_id)
      end
  end

  def downvote
    @comment = Comment.find_by id: params[:id]
    @comment.downvote += 1
      if @comment.save
        redirect_to post_path(id: @comment.post_id)
      end
  end



end
