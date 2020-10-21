class UsersController < ApplicationController
  before_action :find_user, only: [:edit, :update, :delete]

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @blogs = @user.blogs
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
    sign_out_and_redirect(current_user)
  end

  private

  def user_params
    params.require(:user).permit(:username, :firstname, :lastname ,:password)
  end

  
end
