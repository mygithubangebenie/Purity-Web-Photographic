Rails.application.routes.draw do
  
  resources :galleries
  devise_for :users
  root 'photographers#index'
  resources :photographers do
    resources :comments
  end
end
