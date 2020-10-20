Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #user 
    get '/user' => 'users#index', as: 'index_user'
    get '/user/new' => 'users#new', as: 'new_user'
    post '/user/create' => 'users#create', as: 'create_user'
    get '/user/:id' => 'users#show', as: 'show_user'
    get '/user/:id/edit' => 'users#edit', as: 'edit_user'
    patch '/user/:id/update' => 'users#update', as: 'update_user'
    delete '/user/:id/delete' => 'users#delete', as: 'delete_user'
  
  #blog
    get '/user/:user_id/blog/new' => 'blogs#new', as: 'new_blog'
    post '/user/:user_id/blog/create' => 'blogs#create', as: 'create_blog'
    get '/user/:user_id/blog/:blog_id' => 'blogs#show', as: 'show_blog'
    get '/user/:user_id/blog/:blog_id/edit' => 'blogs#edit', as: 'edit_blog'
    patch '/user/:user_id/blog/:blog_id/update' => 'blogs#update', as: 'update_blog'
    delete '/user/:user_id/delete/:blog_id/' => 'blogs#delete', as: 'delete_blog'
  
  #comment
    post '/blog/:blog_id/comment/create' => 'comments#create', as: 'create_comment'
    delete '/blog/:blog_id/comment/:comment_id/delete' => 'comments#delete', as: 'delete_comment'
end
