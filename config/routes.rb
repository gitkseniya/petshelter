Rails.application.routes.draw do
  get '/airports', to: 'airports#index'
  get '/airports/:id', to: 'airports#show'
  get '/:id/airlines', to: 'airports#airlines_list'

  get '/airlines', to: 'airlines#index'
  get '/airlines/:id', to: 'airlines#show'
end
