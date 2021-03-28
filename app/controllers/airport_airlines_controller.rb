class AirportAirlinesController < ApplicationController
  def index
    @airport = Airport.find(params[:id])
    @airlines = @airport.airlines
  end
end
