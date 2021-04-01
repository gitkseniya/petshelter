class AirlinesController < ApplicationController
  def index
    @airlines = Airline.all
  end

  def show
    @airline = Airline.find(params[:id])
  end

  def edit
    @airline = Airline.find(params[:id])
  end

  def update
    airline = Airline.find(params[:id])
    airline.update(airline_params)
    airline.save
    redirect_to "/airlines/#{airline.id}"
  end

  private

  def airline_params
    params.permit(:name, :flight_number, :domestic_flight)
  end
  #
  # def airlines_list
  #   @airline = Airline.find(params[:id])
  #   @airlines = @airline.airlines.all
  #   binding.pry
  #   @airlines
  # end

end
