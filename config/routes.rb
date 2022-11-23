Rails.application.routes.draw do
  devise_for :users
  get "home", to: "pages#home"
  resources :celebs do
    resources :bookings
  end
  get '/mybookings', to: 'users#bookings'
  resources :users, only: [:show]
  root to: "pages#home"
  get "users/:id/celebs", to: "users#celebs"

end
