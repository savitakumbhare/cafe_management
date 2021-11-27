Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/" => "cafe#index"

  resources :cafe
  resources :menu
  resources :orders

  get "/signin" => "sessions#new", as: :new_sessions
  post "/signin" => "sessions#create", as: :sessions

  get "/sessions/customer" => "sessions#customer", as: :customer_session
  get "/sessions/owner" => "sessions#owner", as: :owner_session

  delete "/signout" => "sessions#destroy", as: :destroy_session
  post "/cafe/new" => "cafe#create", as: :new_cafe_path
  delete "/menu/show/:id" => "menu#destroy", as: :destroy_menuItem

  post "/sessions/customer/:id" => "order#new", as: :add_OrderItem
end
