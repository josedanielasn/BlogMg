Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'blogs#index'

  #user 
   resources :users do 
      resources :blogs
   end
  
  #blog
    
    # get '/user/:user_id/blogs' => 'blogs#index', as: 'index_blog'
    # get '/user/:user_id/blog/new' => 'blogs#new', as: 'new_blog'
    # post '/user/:user_id/blog/create' => 'blogs#create', as: 'create_blog'
    # get '/user/:user_id/blog/:blog_id' => 'blogs#show', as: 'show_blog'
    # get '/user/:user_id/blog/:blog_id/edit' => 'blogs#edit', as: 'edit_blog'
    # patch '/user/:user_id/blog/:blog_id/update' => 'blogs#update', as: 'update_blog'
    # delete '/user/:user_id/delete/:blog_id/' => 'blogs#delete', as: 'delete_blog'
  
  #comment
    post '/blog/:blog_id/comment/create' => 'comments#create', as: 'create_comment'
    delete '/blog/:blog_id/comment/:comment_id/delete' => 'comments#delete', as: 'delete_comment'
end
