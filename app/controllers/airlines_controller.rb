class AirlinesController < ApplicationController
  def index
    @airlines = Airline.all
  end

  def show
    @airline = Airline.find(params[:id])
  end
  #
  # def airlines_list
  #   @airport = Airport.find(params[:id])
  #   @airlines = @airport.airlines.all
  #   binding.pry
  #   @airlines
  # end

end
