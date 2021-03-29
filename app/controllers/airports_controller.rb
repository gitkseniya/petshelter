class AirportsController < ApplicationController
  def index
    @airports = Airport.order("created_at DESC")
  end

  def show
    @airport = Airport.find(params[:id])
  end

  def new
    
  end
end
