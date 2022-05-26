Rails.application.routes.draw do
  resources :product_locations
  resources :order_rows
  resources :reviews
  resources :products
  resources :warehouses
  resources :orders
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
