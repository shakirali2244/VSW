Rails.application.routes.draw do
  devise_for :managers

  root 'homes#index'

  resources :drivers
  resources :trips
  # resources :drivers do
  #   resources :trips
  # end
end
