
class CitiesController < ApplicationController
  def index
    @cities = City.where("capital = true")
  end

  def create
    task = City.new({
      name: params[:task][:name],
      population: params[:task][:population],
      capital: params[:task][:capital],
      country_id: params[:task][:country_id]
      })

    task.save

    redirect_to '/cities'
  end

  def show
    @city = City.find(params[:id])
#    require 'pry'; binding.pry
    @country = Country.find(@city.country_id)
  end

  def addopt
    @country = Country.find(params[:id])
    city = @country.cities.create({
      name: params[:name],
      population: params[:population],
      capital: params[:capital],
      country_id: params[:country_id]
      })

    city.save

    redirect_to "/countries/#{params[:id]}/cities"
  end

  def edit
    @cities = City.find(params[:id])
  end

  def update
    city = City.find(params[:id])
    city.update({
      name: params[:name],
      population: params[:population],
      capital: params[:capital],
      })

      city.save

      redirect_to "/cities/#{city.id}"
  end

end
