require 'rails_helper'

RSpec.describe "Story13: When I visit airlines at airport index page", type: :feature do
  it "I can create a new airline" do
    jfk = Airport.create!(name: 'John F Kennedy', terminals: 6, international_hub: true)
    jfk.airlines.create!(name:'Delta', flight_number: 717, domestic_flight: true)
    jfk.airlines.create!(name:'United', flight_number: 431, domestic_flight: false)
    jfk.airlines.create!(name:'American', flight_number: 414, domestic_flight: true)

    visit "/airports/airports/#{jfk.id}"

    click_link 'Add Airline'

    expect(current_path).to eq("/airports/airports/#{jfk.id}/airlines/new")

    fill_in 'Name', with: 'American Airlines'
    fill_in 'Domestic Flight', with: 'true'
    click_on 'Add Airline'

    expect(current_path).to eq("/airports/airports/#{jfk.id}")
    expect(page).to have_content('American Airlines')
  end
end
