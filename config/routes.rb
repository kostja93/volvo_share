Rails.application.routes.draw do
  devise_for :users
  root 'pages#index'
  get "/car_request", to: "pages#car_request"
  get "/request_taken", to: "pages#request_taken"
  get "/car_dash_1", to: "pages#car_dash_1"
  get "/car_dash_2", to: "pages#car_dash_2"
  get "/car_dash_3", to: "pages#car_dash_3"
  get "/car_dash_end", to: "pages#car_dash_end"
  resources :cars, only: [:index]
end
