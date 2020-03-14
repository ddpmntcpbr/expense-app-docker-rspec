Rails.application.routes.draw do
  devise_for :users
  
  root 'static_pages#home'
  get 'help', to: 'static_pages#help'
  get 'about', to: 'static_pages#about'
  get 'contact', to: 'static_pages#contact'
  get  '/companies_signup',  to: 'companies#new'

  resources :companies, only: [:index,:new,:create]
end
