Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'books/index'
  get 'books/show'
  root to: 'pages#home'
  get 'about', to: 'pages#about'


  resources :books, only: [ :index, :show, :new, :create, :edit, :update ]

end
