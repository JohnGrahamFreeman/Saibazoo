Rails.application.routes.draw do
  resources :saibamons
  root to: 'pages#home'
  get 'pages/home'
  get 'saibamon/resources'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
