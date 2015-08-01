Rails.application.routes.draw do
  # Root of the site
  root 'static_pages#home'

  get 'home'    => 'static_pages#home'
  get 'help'    => 'static_pages#help'
  get 'about'   => 'static_pages#about'
  get 'contact' => 'static_pages#contact'
  get 'signup' => 'users#new'

  resources :micro_posts
  resources :users


end
