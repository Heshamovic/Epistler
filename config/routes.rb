Rails.application.routes.draw do
  resources :recipients
  resources :recipients_lists
  resources :templates
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'home/about'
  root 'home#index'
end
