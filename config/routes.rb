Rails.application.routes.draw do
  get '/airports', to: 'airports#index'
  get '/airports/new', to: 'airports#new'
  get '/airports/:id', to: 'airports#show'
  get '/airports/airports/:id/airlines', to: 'airport_airlines#index'

  get '/airlines', to: 'airlines#index'
  get '/airlines/:id', to: 'airlines#show'
end
