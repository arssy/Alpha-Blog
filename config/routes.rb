Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  # Pages
  root to: "pages#index"
  get '/about', to: 'pages#about'

  # Article
  resources :articles

  # User
  get '/signup', to: 'users#new'
  resources :users, except: [:new]


end
