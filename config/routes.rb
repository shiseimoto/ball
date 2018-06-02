Rails.application.routes.draw do
  devise_for :users
  namespace :admin do
    resources :games
  end

  resources :games
  resources :footballs
  resources :basketballs
  root 'games#index'
end
