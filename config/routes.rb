Belfastruby::Application.routes.draw do


  root :to => 'site#index'
  
  resources :interested_users, :only => [:create]
  resources :posts
  
  match 'admin' => 'admin#index'
  
  namespace :admin do
    resources :posts
  end

end
