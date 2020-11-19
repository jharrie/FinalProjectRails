Rails.application.routes.draw do
<<<<<<< HEAD
  devise_for :users
  resources :categories
  get 'welcome/index'
  root "welcome#index"
  resources :abouts
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :products
  resources :services
  resources :staffs
  resources :carts
  resources :customers
  resources :provinces
=======
>>>>>>> 0d048ff67673212757ad9b0a3b2da3770940ae21
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
