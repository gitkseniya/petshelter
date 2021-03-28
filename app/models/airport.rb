class Airport < ApplicationRecord
  has_many :airlines

  def params
  end

  def show
    @airports = Airport.find(params[:id])
  end

end
