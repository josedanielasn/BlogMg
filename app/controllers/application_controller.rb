class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!

  def find_blog
    @user = User.find(current_user.id)
    params[:id] != nil ? @blog = @user.blogs.find(params[:id]) : nil
  end

  def find_user
    @user = User.find(current_user.id)
  end

  protected
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :firstname, :lastname])
  end
end
