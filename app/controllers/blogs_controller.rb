class BlogsController < ApplicationController
  before_action :find_blog
  def new
    find_blog
    @blog = @user.blogs.build()
  end

  def create
    find_blog
    @blog = @user.blogs.build(blog_params)
    if @blog.save 
      redirect_to show_user_path(@user)
    else
      render 'users/show'
    end
  end

  def show
    find_blog
    @comments = @blog.comments
  end

  def edit
    find_blog
  end

  def update
    find_blog
    if @blog.update(blog_params)
      redirect_to show_blog_path(@blog)
    else
      render 'edit'
    end
  end

  def delete
    find_blog
    @blog.destroy
    redirect_to show_user_path(@user)
  end

  private

  def blog_params
    params.require(:blog).permit(:title, :content_text)
  end

end
