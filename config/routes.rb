Rails.application.routes.draw do

  resources :micro_posts
  resources :users

  # Root of the site
  root 'users#index'

end
