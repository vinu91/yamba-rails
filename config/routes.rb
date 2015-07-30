Rails.application.routes.draw do
  # Root of the site
  root 'static_pages#home'

  get 'static_pages/home'

  get 'static_pages/help'

  get 'static_pages/about'

  get 'static_pages/contact'

  resources :micro_posts
  resources :users


end
