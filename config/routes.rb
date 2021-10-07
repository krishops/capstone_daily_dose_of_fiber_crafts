Rails.application.routes.draw do
  devise_for :users
  root to: 'landing#index'

  resources :users do
    get :ravelries
  end

  resources :ravelries
  

  get "/search" => "ravelries#search"
  # put "/patterns/index" => "ravelries#add_pattern"
  # post "/search" => "ravelries#search"
  get "/mypatterns" => "users#patterns" 

end
