Rails.application.routes.draw do
  get 'targets/index'
  devise_for :users
  root to: 'tops#index'
  resources :tops, only: [:index]
  resources :targets
end
