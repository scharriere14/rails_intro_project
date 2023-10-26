Rails.application.routes.draw do
  # Make collection page
  resources :episodes, only: %i[index show]
  resources :characters, only: %i[index show]

  # Root route
  root 'about#index'

  # Search function
  get "/search", to: "episodes#search"
end
