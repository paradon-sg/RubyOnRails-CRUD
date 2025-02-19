Rails.application.routes.draw do
  resource :session
  resources :passwords, param: :token
  resources :tasks, only: [ :index, :update, :create ]
  root "tasks#index"
end
