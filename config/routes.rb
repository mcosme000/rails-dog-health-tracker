Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get 'dashboard', to: 'pages#dashboard'

  resources :dogs
  resources :establishments
end
