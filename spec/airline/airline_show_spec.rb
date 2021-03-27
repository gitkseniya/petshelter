require 'rails_helper'

RSpec.describe "airline details page", type: :feature do
  it "displays airline details" do
    jfk = Airport.create!(name: 'John F Kennedy', terminals: 175, international_hub: true)
    jfk.airlines.create!(name:'Spirit', flight_number: 424, domestic_flight: true)
    jfk.airlines.create!(name:'United', flight_number: 513, domestic_flight: true)

    visit "/airlines/:id"
    expect(page).to have_content(spirit.name)
    expect(page).to have_content(spirit.flight_number)
    expect(page).to have_content(spirit.domestic_flight)
    expect(page).to have_content(united.name)
    expect(page).to have_content(united.flight_number)
    expect(page).to have_content(united.domestic_flight)
  end
end
