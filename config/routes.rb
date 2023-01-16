Rails.application.routes.draw do
  get 'targets/index'
  devise_for :users
  root to: 'tops#index'
  resources :tops, only: [:index]
  resources :targets, only: [:index, :new, :create ] do
    resources :comments, only: [:index, :create]
    resources :likes, only:[:create, :destroy]
    collection do
      get :likes
    end
  end

end
