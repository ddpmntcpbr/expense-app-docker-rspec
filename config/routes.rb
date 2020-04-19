Rails.application.routes.draw do
  get 'expense_approvals/index'
  get 'expense_approvals/show'
  get 'expense_approvals/edit'
  get 'expense_approvals/update'
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
  resources :expense_applications
  resources :expense_approvals, only: [:index,:show,:edit,:update]
end
