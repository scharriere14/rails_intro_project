Rails.application.routes.draw do
  # commenting out as we dont want it to be episodes/index, we want index to default
  # get "episodes/index"
  # get "episodes/show"
  # get "characters/index"
  # get "characters/show"

  # make collection page
  resources :episodes, only: %i[index show]
  resources :characters, only: %i[index show]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
