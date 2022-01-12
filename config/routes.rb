Rails.application.routes.draw do
  get 'top/index'
  devise_for :users
  root 'top#index'
  resources :users, only: [:edit, :update]
end