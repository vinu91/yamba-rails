Rails.application.routes.draw do

  resources :users

  # Root of the site
  root 'users#index'

end
