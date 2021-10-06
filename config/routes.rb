Rails.application.routes.draw do
  devise_for :users
  root to: 'landing#index'

  resources :users
  resources :ravelries
  

  get "/search" => "ravelries#search"
  # put "/patterns/index" => "ravelries#add_pattern"
  

end
