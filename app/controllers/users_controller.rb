class UsersController < ApplicationController
  def show
    @user = User.find_by id: params[:id]
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new
    @user.username = params[:user][:username]
    if @user.save
      redirect_to root_path
    else
      render :new
    end
  end



end
