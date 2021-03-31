class AirportAirlinesController < ApplicationController
  def index
    @airport = Airport.find(params[:id])
    @airlines = @airport.airlines
  end

  def new
    @airport = Airport.find(params[:id])
    @airlines = @airport.airlines
  end

  def create
    @airport = Airport.find(params[:id])
    @airport.airlines.create!(airline_params)

    redirect_to "/airports/airports/#{@airport.id}/airlines"
  end

  def airline_params
    params.permit(:name, :flight_number, :domestic_flight)
  end
end
