Rails.application.routes.draw do
  resources :cart, only: %i[create destroy]
  devise_for :users
  resources :categories
  get "welcome/index"
  root "welcome#index"
  resources :abouts
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :products
  resources :services
  resources :staffs
  resources :carts
  resources :provinces
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
