Rails.application.routes.draw do
  devise_for :users
  get "home", to: "pages#home"
  resources :celebs do
    resources :bookings
  end
  get '/mybookings', to: 'users#bookings'
  get "users/celebs", to: "users#celebs"
  resources :users, only: [:show]
  root to: "pages#home"

end
