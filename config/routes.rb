Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  delete :logout, to: "sessions#logout"
  get '/logged_in', to: "sessions#logged_in"
  resources :sessions
  resources :registrations, only: [:create, :index]
  root to: "breweries#index"
  resources :notes
  resources :favorites
  resources :breweries
  resources :users
  post '/login', to: "auth_token#create"
  get '/whoami', to: "auth_token#show"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # post "/login", to: "users#login"
end
