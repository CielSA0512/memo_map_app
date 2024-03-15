Rails.application.routes.draw do
  get 'posts/index'
  devise_for :users
  root to: "posts#index"
  resources :posts
  resources :users, only: [:edit, :update, :show]
end
