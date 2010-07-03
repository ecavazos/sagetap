Sagetap::Application.routes.draw do |map|
  devise_for :users
  resources :quotes

  root :to => "home#index"
end
