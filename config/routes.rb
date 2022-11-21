Rails.application.routes.draw do
  devise_for :users
  resources :celebs
  resources :users
  resources :bookings
  root to: "celebs#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
