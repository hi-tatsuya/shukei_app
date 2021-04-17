Rails.application.routes.draw do
  get 'users/show'
  root to: 'mikomis#index'
  resources :mikomis
  devise_for :users
  resource :users, only: :show
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
