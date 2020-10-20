class ApplicationController < ActionController::Base

  def find_blog
    @user = User.find(params[:user_id])
    !@user.blogs.empty? ? @blog = @user.blogs.find(params[:blog_id]) : 'nil'
  end

  def find_user
    @user = User.find(params[:id])
  end
end
