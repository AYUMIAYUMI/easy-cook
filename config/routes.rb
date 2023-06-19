Rails.application.routes.draw do
  devise_for :users
  resources :recipes, only: [:index, :new, :show, :create, :show, :edit, :destroy, :update]
  get 'recipes/index'
  root to: "recipes#index"
end
