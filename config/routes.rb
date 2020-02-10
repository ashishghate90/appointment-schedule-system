Rails.application.routes.draw do
  resources :appointments
  get 'home/index'
  root to: 'home#index'
  devise_for :users

  namespace :admin do
  	root to: 'dashboard#index'
  end

  namespace :doctor do
  	resources :appoinments, only: [:index, :create]
  	root to: 'appoinments#index'
  end
end
