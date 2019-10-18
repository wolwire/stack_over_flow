Rails.application.routes.draw do



  root 'static_pages#home'
  get 'static_pages/help'
  get 'sessions/new'


  get "/about", to: 'static_pages#about'
  get "/contact", to: 'static_pages#contact'
  get "/help", to: 'static_pages#help'

  get '/search', to: 'questions#search'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/signup', to: 'users#new'
  delete '/logout', to: 'sessions#destroy'

  resources :user
  resources :account_activation, only: [:edit]
  resources :password_resets , only:[:new, :create, :edit, :update]
  resources :questions
  resources :answers ,except: [:index,:show]
  resources :tags, only: [:index, :show]
  resources :comments, except: [:new, :index, :show]


end

