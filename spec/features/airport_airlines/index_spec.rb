require 'rails_helper'

RSpec.describe "Story10: When I visit airport details page", type: :feature do
  it "contains link to available airlines for airport" do
    jfk = Airport.create!(name: 'John F Kennedy', terminals: 6, international_hub: true)
    jfk.airlines.create!(name:'Delta', flight_number: 717, domestic_flight: true)
    jfk.airlines.create!(name:'United', flight_number: 431, domestic_flight: false)
    jfk.airlines.create!(name:'American', flight_number: 414, domestic_flight: true)

    visit "/airports/#{jfk.id}"
    expect(page).to have_link("Airlines At This Airport (3)")
  end
end
