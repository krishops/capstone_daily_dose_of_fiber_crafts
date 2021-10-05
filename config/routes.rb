Rails.application.routes.draw do
  devise_for :users
  root to: 'landing#index'
  resources :users do 
    resources :patterns
  end

  get "/ravelry/index" => "ravelries#index"

end
