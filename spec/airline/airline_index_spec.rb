require 'rails_helper'

RSpec.describe "Story3: When I visit airlines index page", type: :feature do
  it "displays all airlines" do
    jfk = Airport.create!(name: 'John F Kennedy', terminals: 175, international_hub: true)
    spirit = jfk.airlines.create!(name:'Spirit', flight_number: 424, domestic_flight: true)
    united = jfk.airlines.create!(name:'United', flight_number: 513, domestic_flight: true)

    visit "/airlines/#{spirit.id}"
    expect(page).to have_content(spirit.name)
    visit "/airlines/#{united.id}"
    expect(page).to have_content(united.name)
  end
end
