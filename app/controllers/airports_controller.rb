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
    airport = Airport.find(params[:id])
    airport.update(airport_params)
    airport.save
    redirect_to "/airports/#{airport.id}"
  end

  private

  def airport_params
    params.permit(:name, :terminals, :international_hub)
  end
end
