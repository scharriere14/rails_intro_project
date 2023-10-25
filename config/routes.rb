Rails.application.routes.draw do
  # make collection page
  resources :episodes, only: %i[index show]
  resources :characters, only: %i[index show]
  resources :about, only: %i[index]

  # search function
  get "/search", to: "episodes#search"
end
