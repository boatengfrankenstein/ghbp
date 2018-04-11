Rails.application.routes.draw do
  resources :categories
  resources :classifieds
  resources :movies
  resources :directors

  get :search, controller: :classifieds
  root to: "main#index"
end
