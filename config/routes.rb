Rails.application.routes.draw do
  devise_for :users
  root 'welcome#index'

  resources :products
  resources :orders
  resources :line_items, only: :create
end
