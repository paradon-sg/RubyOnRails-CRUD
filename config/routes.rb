Rails.application.routes.draw do
  get "tasks/index"
  resource :session
  resources :passwords, param: :token

  resources :tasks, only: [ :index, :update, :create ]

  root "tasks#index"
end
