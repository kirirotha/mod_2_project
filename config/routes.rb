Rails.application.routes.draw do
  resources :orders,only: [:new, :show, :create]
  resources :ordered_items
  resources :users, only: [:index, :show, :new, :create, :edit, :update]
  resources :comments, only: [:show]
  resources :shopping_carts, only: [:show]
  resources :selected_items, only: [:show, :index, :create, :update, :destroy]
  resources :categories, only: [:index, :new, :show, :create]
  resources :items, only: [:index, :show, :new, :create]

  get '/login', to: 'auth#login'
  post '/login', to: 'auth#verify'
  get '/logout', to: 'auth#logout'
  root to: 'pages#home'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
