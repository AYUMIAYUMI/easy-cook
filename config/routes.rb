Rails.application.routes.draw do
  devise_for :users
  resources :recipes, only: :index
  get 'recipes/index'
  root to: "recipes#index"
end
