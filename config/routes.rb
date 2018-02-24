Rails.application.routes.draw do
  root 'pages#index'
  resources :cars, only: [:index]
end
