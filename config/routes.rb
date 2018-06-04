Rails.application.routes.draw do
  resources :cars
  devise_for :businesses, path: 'businesses', controllers: {
  	sessions: "businesses/sessions",
  	registrations: "businesses/registrations"
  }

  devise_for :customers, path: 'customers', controllers: { 
  	sessions: "customers/sessions",
  	registrations: "customers/registrations"
  }

  get 'index/index'
  get 'index/login'
  get 'index/signup'
  get 'index/about'
  get 'cep/index'

  devise_scope :customer do
  get 'sign_in', to: 'devise/sessions#new'
  end

  root to: "index#index"
end
