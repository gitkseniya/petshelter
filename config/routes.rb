Rails.application.routes.draw do
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

end
