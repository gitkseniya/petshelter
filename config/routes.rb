Rails.application.routes.draw do
  get '/', to: 'welcome#index'
  get '/libraries', to: 'libraries#index'
  get '/libraries/:id', to: 'libraries#show'
end
