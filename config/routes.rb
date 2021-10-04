Rails.application.routes.draw do
  devise_for :users
  root to: 'ravelries#index'
  resources :users do 
    resources :patterns
  end

  get "/ravelries" => "ravelries#index"

end
