Rails.application.routes.draw do
  devise_for :users
  root to: 'landing#index'
  # resources :users do 
  #   resources :ravelries
  # end

  get "/search" => "ravelries#index"

  get "/user/patterns" => "users#patterns"

end
