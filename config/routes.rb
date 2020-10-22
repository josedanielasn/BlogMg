Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'blogs#index'

  #user #blog
   resources :users do 
      resources :blogs, except: %i[index]
   end
  
  #comment
    post '/blog/:blog_id/comment/create' => 'comments#create', as: 'create_comment'
    delete '/blog/:blog_id/comment/:comment_id/delete' => 'comments#delete', as: 'delete_comment'
end
