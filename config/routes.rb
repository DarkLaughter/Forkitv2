Rails.application.routes.draw do
  root to: 'users#home'
  resources :user_meals
  resources :users
  resources :ratings
  resources :comments
  resources :meals
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
