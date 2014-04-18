ScratchPaper::Application.routes.draw do
  resources :ideas

  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users

  match '/ideas/:id/like' => 'ideas#like', via: 'get', as: :like
  match '/ideas/:id/follow' => 'ideas#follow', via: 'get', as: :follow

end
