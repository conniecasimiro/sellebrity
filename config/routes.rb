Rails.application.routes.draw do
  devise_for :users
  get "home", to: "pages#home"
  resources :users
  resources :celebs do
    resources :bookings
  end
  root to: "pages#home"

  get "users/:id/celebs", to: "users#celebs"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
