Rails.application.routes.draw do
  get 'mypages/index'
  get 'top/index'
  devise_for :users
  root 'top#index'
  resources :users, only: [:edit, :update]
  resources :mypages, only: [:index, :new, :show, :create]
end