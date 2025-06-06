Rails.application.routes.draw do

  devise_for :users

  get 'homes/top'
  get "homes/about"
  root to: 'homes#top'

  resources :books
  resources :users, only: [:show, :edit, :update, :index]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
