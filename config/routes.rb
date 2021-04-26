Rails.application.routes.draw do
  # get 'transaction/index'
  # get 'transaction/create'
  get 'transaction/external'
  devise_for :users
  resources :users, only: %[index show]
  resources :groups
  resources :transactions
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
