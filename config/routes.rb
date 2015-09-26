Rails.application.routes.draw do
  devise_for :managers

  # You can have the root of your site routed with "root"
  root 'homes#index'

  resources :drivers do
    resources :trips
  end
end
