Rails.application.routes.draw do
  devise_for :users
  root to: 'search#index'
  resources :users do 
    resources :patterns
  end

end
