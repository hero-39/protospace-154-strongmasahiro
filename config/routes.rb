Rails.application.routes.draw do
  devise_for :users
  root to: 'prototypes#index'
  resources :prototypes, only: [:index, :new, :create, :show] do
    resources :comments, only: :create
  end
  resources :users, only: [:show]
end
