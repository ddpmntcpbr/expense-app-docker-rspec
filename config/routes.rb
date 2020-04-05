Rails.application.routes.draw do
  get 'expenses/index'
  get 'expenses/show'
  devise_for :users, controllers: {
    sessions:      'users/sessions',
    passwords:     'users/passwords',
    registrations: 'users/registrations',
    invitations: 'users/invitations'
}
  
  root 'static_pages#home'
  get 'help', to: 'static_pages#help'
  get 'about', to: 'static_pages#about'
  get 'contact', to: 'static_pages#contact'
  get  '/companies_signup',  to: 'companies#new'

  resources :companies, only: [:index,:new,:create]
  resources :expenses
end
