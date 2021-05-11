Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "restaurants#index"
  resources :restaurants, except:[:index]

  # # READ
  # # - ALL
  # get "/restaurants", to: "restaurants#index", as: :restaurants

  # # CREATE
  # new route has to come before the show!
  # get "/restaurants/new", to: "restaurants#new", as: :new_restaurant
  # post "/restaurants", to: "restaurants#create"
  # # no alias needed as already defined above


  # # - ONE
  # get "/restaurants/:id", to: "restaurants#show", as: :restaurant

  # # UPDATE
  # get "/restaurants/:id/edit", to: "restaurants#edit", as: :edit_restaurant
  # patch "/restaurants/:id", to: "restaurants#update"

  # # DESTROY
  # delete get "/restaurants/:id", to: "restaurants#destroy"

end
