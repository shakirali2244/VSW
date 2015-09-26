Rails.application.routes.draw do
  devise_for :managers

  root "home#index"
end
