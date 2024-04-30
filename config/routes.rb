Rails.application.routes.draw do

  get '/login', to: 'sessions#new'

  delete '/logout', to: 'sessions#destroy', as: 'logout'

  resources :users, only: [:new, :create, :index, :show]

  resources :sessions, only: [:new, :create, :destroy]

  root 'welcome#index'

 
  resources :patients

  resources :doctors do
    get 'graph', on: :collection
  end
end
