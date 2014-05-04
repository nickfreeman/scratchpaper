Idealy::Application.routes.draw do
  resources :ideas

  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users

  put '/ideas/:id/like' => 'ideas#like', via: 'put', as: :like
  put '/ideas/:id/follow' => 'ideas#follow', via: 'put', as: :follow
  put '/ideas/:id/contribute' => 'ideas#contribute', via: 'put', as: :contribute
  put '/ideas/:id/uncontribute' => 'ideas#uncontribute', via: 'put', as: :uncontribute

  resources :profile

  post '/ideas/create_update'=> 'ideas#create_update', via: 'post', as: :create_update
end
