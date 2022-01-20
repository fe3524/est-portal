Rails.application.routes.draw do
  get 'mypages/index'
  get 'top/index'
  devise_for :users
  root 'top#index'
  resources :users, only: [:show, :edit, :update]
  resources :mypages, only: [:index, :new, :show, :create]
  resources :post_pdf, only: :index
end