class UsersController < ApplicationController
  before_action :find_user, only: [:show, :edit, :update, :delete]

  def index
    @users = User.all
  end

  def show
    @blogs = @user.blogs
  end

  def new
    @user = User.new()
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to index_user_path
    else
      render 'new'
    end
  end

  def edit
    
  end

  def udpate
    if @user.update(user_params)
      redirect_to index_user_path
    else
      render 'edit'
    end
  end

  def delete
    @user.destroy
    redirect_to index_user_path
  end

  private

  def user_params
    params.require(:user).permit(:username, :firstname, :lastname ,:password)
  end

  
end
