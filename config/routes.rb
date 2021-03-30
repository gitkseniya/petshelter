Rails.application.routes.draw do
  get '/', to: 'welcome#index'

  get '/libraries', to: 'libraries#index'
  get '/libraries/new', to: 'libraries#new'
  post '/libraries', to: 'libraries#create'

  get '/libraries/:id/books/new', to: 'books#new'
  post '/libraries/:id/books', to: 'books#create'

  get '/libraries/:id/books', to: 'libraries#books'
  get '/libraries/:id', to: 'libraries#show'

  get '/libraries/:id/edit', to: 'libraries#edit'
  patch '/libraries/:id', to: 'libraries#update'
  delete '/libraries/:id', to: 'libraries#destroy'

  get '/books', to: 'books#index'

  get '/books/:id', to: 'books#show'
  get '/books/:id/edit', to: 'books#edit'

  patch '/books/:id', to: 'books#update'
end
