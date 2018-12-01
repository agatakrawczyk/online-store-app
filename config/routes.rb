Rails.application.routes.draw do
  root to: 'welcome#index'

  devise_for :users, module: "users"
	
  resources :products
  resources :orders
  resource :cart
  resources :line_items, only: [:create, :destroy]
end
