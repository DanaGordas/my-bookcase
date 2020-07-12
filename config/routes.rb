Rails.application.routes.draw do
  get 'books/index'
  get 'books/show'
  root to: 'pages#home'

  resources :books, only: [ :index, :show ]
end
