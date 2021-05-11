Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :restaurants 

  # # READ
  # # - ALL
  # get "/restaurants", to: "restaurants#index", as: :restaurants
  # # - ONE
  # get "/restaurants/:id", to: "restaurants#show", as: :restaurant

  # # CREATE
  # get "/restaurants/new", to: "restaurants#new", as: :new_restaurant
  # post "/restaurants", to: "restaurants#create"
  # # no alias needed as already defined abobe

  # # UPDATE
  # get "/restaurants/:id/edit", to: "restaurants#edit", as: :edit_restaurant
  # patch "/restaurants/:id", to: "restaurants#update"

  # # DESTROY
  # delete get "/restaurants/:id", to: "restaurants#destroy"

end
