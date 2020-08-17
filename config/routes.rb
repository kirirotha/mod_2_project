Rails.application.routes.draw do
  resources :users, only: [:index, :show, :new, :create]
  resources :comments, only: [:show]
  resources :shopping_carts, only: [:show]
  resources :selected_items, only: [:show]
  resources :categories, only: [:index, :new, :show, :create]
  resources :items, only: [:index, :show, :new, :create]


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
