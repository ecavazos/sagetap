Sagetap::Application.routes.draw do |map|
  devise_for :users
  resources :quotes
  resources :categories

  root :to => "home#index"
end
