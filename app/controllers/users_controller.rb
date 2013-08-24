class UsersController < ApplicationController
  def index
    @user = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(params[:user])
    @current_user = @user
    session[:user_id] = @user.id
    redirect_to(@user)
  end

  def show
    @user = User.find(params[:id])
    @challenges = @user.challenges
  end

  def edit
    @user = User.find(params[:id])
  end

  def udpate
    user = User.find(params[:id])
    user.update_attributes(params[:user])
    redirect_to(user)
  end

end