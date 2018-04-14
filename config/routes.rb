Rails.application.routes.draw do
  get 'welcome/index'

  devise_for :users, class_name: 'FormUser', :controllers => { omniauth_callbacks: 'omniauth_callbacks', registrations: 'registrations' }
  resources :categories
  resources :classifieds
  resources :movies
  resources :directors

  get :search, controller: :classifieds
  get :contact, controller: :classifieds
  get 'welcome/index'
  root 'welcome#index'
 

  devise_scope :user do
    get '/users/auth/:provider/upgrade' => 'omniauth_callbacks#upgrade', as: :user_omniauth_upgrade
    get '/users/auth/:provider/setup', :to => 'omniauth_callbacks#setup'
  end
  
end
