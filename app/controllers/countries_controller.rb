class CountriesController < ApplicationController
  def index
    @countries = Country.all.order(id: :desc)
  end

  def create
    country = Country.new({
      name: params[:task][:name],
      population: params[:task][:population],
      gdp: params[:task][:gdp],
      has_monarch: params[:task][:has_monarch],
      })

    country.save

    redirect_to '/countries'
  end

  def show
    @countries = Country.find(params[:id])
  end

  def show_individual
    @countries = Country.find(params[:id])
  end

  def new
  end

  def edit
    @countries = Country.find(params[:id])
  end

  def update
    task = Country.find(params[:id])
    task.update({
      name: params[:task][:name],
      population: params[:task][:population],
      gdp: params[:task][:gdp],
      has_monarch: params[:task][:has_monarch]
      })

      task.save

      redirect_to "/countries/#{task.id}"
  end

  def new_city
    @countries = Country.find(params[:country_id])
  end

  def destroy_it
    country = Country.find(params[:id])
    country.cities.each do |city|
      City.destroy(city.id)
    end

    Country.destroy(params[:id])

    redirect_to '/countries'
  end
end
