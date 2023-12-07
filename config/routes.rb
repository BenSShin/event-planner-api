Rails.application.routes.draw do
  # "/sessions"
  post "/sessions" => "sessions#create"
  # users
  post "/users" => "users#create"
end
