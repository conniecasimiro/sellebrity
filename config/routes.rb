Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "home", to: "pages#home"
  resources :celebs do
    resources :bookings
  end
  get '/mybookings', to: 'users#bookings'
  get "users/celebs", to: "users#celebs"
  post "users/celebs/:id", to: "users#accept", as: :accept
  delete "users/celebs/:id", to: "users#decline", as: :decline
  resources :users, only: [:show]
  get '/celebs2', to: "celebs#index2"
  get '/celebs3', to: "celebs#index3"
end
