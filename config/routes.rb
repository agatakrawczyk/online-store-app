Rails.application.routes.draw do
  root to: 'welcome#index'

  devise_for :users, module: "users"
	
  resources :products
  resources :orders
  resources :carts
  resources :line_items, only: [:create, :destroy]
end
