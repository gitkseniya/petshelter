Rails.application.routes.draw do
  # resources :airports, only: [:index, :show]
  # then rails routes in cl
  get '/airports', to: 'airports#index'
  get '/airports/new', to: 'airports#new'
  post '/airports', to: 'airports#create'
  get '/airports/:id', to: 'airports#show'
  get '/airports/:id/edit', to: 'airports#edit'
  patch '/airports/:id', to: 'airports#update'
  get '/airports/airports/:id/airlines', to: 'airport_airlines#index'
  get '/airports/airports/:id/airlines/new', to: 'airport_airlines#new'
  post '/airports/airports/:id', to: 'airport_airlines#create'

  get '/airlines', to: 'airlines#index'
  get '/airlines/:id', to: 'airlines#show'


end
