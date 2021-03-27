require 'rails_helper'

RSpec.describe "airlines index page", type: :feature do
  it "displays all airlines" do
    jfk = Airport.create!(name: 'John F Kennedy', terminals: 175, international_hub: true)
    jfk.airlines.create!(name:'Spirit', flight_number: 424, domestic_flight: true)
    jfk.airlines.create!(name:'United', flight_number: 513, domestic_flight: true)

    visit "/#{jfk.id}/airlines"
    expect(page).to have_content(spirit.name)
    expect(page).to have_content(united.name)
  end
end
