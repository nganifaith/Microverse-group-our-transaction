Rails.application.routes.draw do
  root 'staticpages#home'
  get 'transaction/external'
  devise_for :users
  resources :groups, only: [:index, :show, :new, :create]
  resources :transactions, only: [:index, :new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
