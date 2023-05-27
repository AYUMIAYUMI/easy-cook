Rails.application.routes.draw do
  devise_for :users
  resources :tweets, only: :index
  get 'recipes/index'
  root to: "recipes#index"
end
