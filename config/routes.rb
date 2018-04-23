Rails.application.routes.draw do
  devise_for :admins
  devise_for :users, module: "users"
  root 'welcome#index'

  resources :products
  resources :orders
  resources :carts
  resources :line_items, only: [:create, :destroy]
end
