Rails.application.routes.draw do
  get 'welcome/index'

  devise_for :users, class_name: 'FormUser', :controllers => { omniauth_callbacks: 'omniauth_callbacks' }
  resources :categories
  resources :classifieds
  resources :movies
  resources :directors

  get :search, controller: :classifieds
  get :contact, controller: :classifieds
  get 'welcome/index'
  root 'welcome#index'
 
end
