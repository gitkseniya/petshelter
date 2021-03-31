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


  get '/countries', to: 'countries#index'
  get '/countries/new', to: 'countries#new'
  post '/countries', to: 'countries#create'
  patch '/countries/:id', to: 'countries#update'
  get '/countries/:id', to: 'countries#show'
  post '/countries/:id', to: 'cities#addopt'
  get '/countries/:id/cities', to: 'countries#show_individual'
  get '/countries/:country_id/cities/new', to: 'countries#new_city'
  get '/countries/:id/edit', to: 'countries#edit'
  delete '/countries/:id', to: 'countries#destroy_it'
  get '/cities', to: "cities#index"
  get '/cities/:id', to: 'cities#show'
  get '/cities/:id/edit', to: 'cities#edit'
  patch '/cities/:id', to: 'cities#update'
  delete '/cities/:id', to: 'cities#destroy'
end
