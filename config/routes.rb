Rails.application.routes.draw do
  devise_for :users
  namespace :admin do
    resources :games
  end

  resources :games
  resources :basketball
  root 'games#index'
end
