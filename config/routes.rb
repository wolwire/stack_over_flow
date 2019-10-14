Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
  get 'static_pages/help'
  get "/about", to: 'static_pages#about'
  get "/questions", to: 'questions#index'
  get '/search', to: 'questions#search'
  resources :questions, only:[:new, :edit, :show, :update]
end
