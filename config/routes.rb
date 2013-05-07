Rails.application.routes.draw do
  
  devise_for :users

  resources :users

  namespace :settings do
    resource :profile
  end
  
end
