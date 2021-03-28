Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/', to: 'welcome#index'

  get '/countries', to: 'countries#index'
  get '/countries/:id', to: 'countries#show'


  get '/cities', to: "cities#index"
  get '/cities/:id', to: 'cities#show'



  get '/countries/:id/cities', to: 'countries#show_individual'


end
