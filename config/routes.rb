Rails.application.routes.draw do
  # "/sessions"
  post "/sessions" => "sessions#create"
  # users
  post "/users" => "users#create"
  # places
  get "/places" => "places#index"

  # trips
  get "/trips" => "trips#index"
end
