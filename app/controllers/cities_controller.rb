
class CitiesController < ApplicationController
  def index
    @cities = City.all
  end

  def create
    city = City.new({
      name: params[:task][:name],
      population: params[:task][:population],
      capital: params[:task][:capital],
      country_id: params[:task][:country_id],
      })

    country.save

    redirect_to '/cities'
  end

  def show
    @city = City.find(params[:id])
#    require 'pry'; binding.pry
    @country = Country.find(@city.country_id)
  end

end
