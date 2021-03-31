Rails.application.routes.draw do
<<<<<<< HEAD
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #require 'pry'; binding.pry

  get '/', to: 'welcome#index'

  get '/countries', to: 'countries#index'
  get '/countries/new', to: 'countries#new'
  post '/countries', to: 'countries#create'



  patch '/countries/:id', to: 'countries#update'
  get '/countries/:id', to: 'countries#show'
  post '/countries/:id', to: 'cities#addopt'

  get '/countries/:id/cities', to: 'countries#show_individual'
  get '/countries/:country_id/cities/new', to: 'countries#new_city'
  get '/countries/:id/edit', to: 'countries#edit'



  get '/cities', to: "cities#index"
  get '/cities/:id', to: 'cities#show'
  get '/cities/:id/edit', to: 'cities#edit'
  patch '/cities/:id', to: 'cities#update'
=======
  # resources :airports, only: [:index, :show]
  # then rails routes in cl
  get '/airports', to: 'airports#index'
  get '/airports/new', to: 'airports#new'
  post '/airports', to: 'airports#create'
  get '/airports/:id', to: 'airports#show'
  get '/airports/:id/edit', to: 'airports#edit'
  patch '/airports/:id', to: 'airports#update'
  get '/airports/airports/:id/airlines', to: 'airport_airlines#index'

  get '/airlines', to: 'airlines#index'
  get '/airlines/:id', to: 'airlines#show'

>>>>>>> ec7d96e22c4611d91dca0e1fdc42f8fdf21d472f

end
