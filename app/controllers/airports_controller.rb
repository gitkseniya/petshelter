class AirportsController < ApplicationController
  def index
    @airports = Airport.order("created_at DESC")
  end

  def show
    @airport = Airport.find(params[:id])
  end

  def new
  end

  def create
    @airport = Airport.new(airport_params)
    @airport.save
    redirect_to '/airports'
  end

  def edit
    @airport = Airport.find(params[:id])
  end

  def update
    # @airport = Airport.find(params[:id])
    # airport.update({
    #   name: params[:airport][:name],
    #   terminals: params[:airport][:terminals],
    #   international_hub: params[:airport][:international_hub],
    #   updated_at: params[:airport][:updated_at]
    #   })
    # airport.save
    # @airport = Airport.find(params[:id])
    # airport.update(params[:airport][:name])
    # airport.update(params[:airport][:terminals])
    # airport.update(params[:airport][:international_hub])
    # airport.save
    # OR
    airport = Airport.find(params[:id])
    airport.update(airport_params)
    airport.save
    # OR
    # airport = Airport.new(airport_params)
    # airport.save
    # OR
    redirect_to "/airports/#{airport.id}"
  end

  private

  def airport_params
    params.permit(:name, :terminals, :international_hub)
  end
end
