Rails.application.routes.draw do
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

  root to: "index#index"
end
