class CommentsController < ApplicationController

  def create
    find_blog
    @comment = @blog.comments.create(comment_params)
    
    redirect_to show_blog_path(user_id: @user.id, blog_id: @blog.id)
  end

  def delete
    @comment = Comment.find(params[:comment_id])   
    @comment.destroy
    byebug
    redirect_to blog_show_path(user_id: @blog.user.id, blog_id: @blog.id)
  end

  private
  def comment_params
    params.require(:comment).permit(:commenter, :comment_text)
  end
end
