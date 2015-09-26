Rails.application.routes.draw do
  devise_for :managers

  root "home#index"

  resources :drivers do
    resources :trips
  end
end
