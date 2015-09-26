Rails.application.routes.draw do
  devise_for :managers

  root 'homes#index'

  resources :drivers do
    resources :trips
  end
end
