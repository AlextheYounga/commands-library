Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "pages#home"
  get 'library', to: 'pages#library'
  post 'item/create', to: 'items#create'
  post 'category/create', to: 'categories#create'
  resources :users
  get 'signup', to: 'users#signup'
  get 'login', to: 'sessions#login'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
end
