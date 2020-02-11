Rails.application.routes.draw do
  devise_for :users
  root to: 'tv_shows#index'
  resources :favorite_shows, only: :create
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
