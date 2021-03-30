Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #require 'pry'; binding.pry

  get '/', to: 'welcome#index'

  get '/countries', to: 'countries#index'
  get '/countries/new', to: 'countries#new'
  post '/countries', to: 'countries#create'



  patch '/countries/:id', to: 'countries#update' 

  get '/countries/:id', to: 'countries#show'
  get '/countries/:id/cities', to: 'countries#show_individual'
  get '/countries/:id/edit', to: 'countries#edit'





  get '/cities', to: "cities#index"
  get '/cities/:id', to: 'cities#show'





end
