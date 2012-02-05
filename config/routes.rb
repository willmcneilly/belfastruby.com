Belfastruby::Application.routes.draw do

  get "posts/new"

 root :to => 'site#index'
 resources :interested_users, :only => [:create]

end
