Rails.application.routes.draw do
  devise_for :customers
  get 'index/index'
  # root 'index#index'
  root to: "index#index"
end
