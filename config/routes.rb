Rails.application.routes.draw do
  post "/login", to: "sessions#create"
  post "/signup", to: "users#create"
  delete "/logout", to: "sessions#destroy"
  get "/get_current_user", to: "sessions#get_current_user"
  resources :comments
  resources :video_games
  resources :users
  

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end