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
    Airport.create(name: params[:name])
      redirect_to '/airports'
  end

  def edit
  end
end
