Rails.application.routes.draw do
  devise_for :users
  namespace :admin do
    resources :games
  end

  resources :games
  root 'games#index'
end
