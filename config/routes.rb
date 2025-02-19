Rails.application.routes.draw do
  mount MissionControl::Jobs::Engine, at: "/jobs"

  resource :session

  resources :passwords, param: :token

  resources :tasks, only: [ :index, :update, :create ]

  root "tasks#index"
end
