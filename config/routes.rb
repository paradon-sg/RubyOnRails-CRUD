Rails.application.routes.draw do
  get "tasks/index"
  resource :session
  resources :passwords, param: :token
  root "tasks#index"
end
