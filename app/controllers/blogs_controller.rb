class BlogsController < ApplicationController
  

  def index
    @blogs = Blog.all
  end

  def new
    @user = User.find(params[:user_id])
    @blog  = @user.blogs.build()
  end

  def create
    @user = User.find(params[:user_id])
    @blog = @user.blogs.build(blog_params)
    if @blog.save 
      redirect_to user_path(@user)
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:user_id])
    @blog = Blog.find(params[:id])
    @comments = @blog.comments
  end

  def edit
    find_blog
  end

  def update
    find_blog
    if @blog.update(blog_params)
      redirect_to user_blog_path(@user,@blog)
    else
      render 'edit'
    end
  end

  def destroy
    find_blog
    @blog.destroy
    redirect_to user_path(@user)
  end

  private

  def blog_params
    params.require(:blog).permit(:title, :content_text)
  end

end
