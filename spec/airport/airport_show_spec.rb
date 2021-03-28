require 'rails_helper'

RSpec.describe "Story2: When I visit airport details page", type: :feature do
  it "displays airport details" do
    jfk = Airport.create!(name: 'John F Kennedy', terminals: 175, international_hub: true)

  visit "/airports/#{jfk.id}"
  expect(page).to have_content(jfk.name)
  expect(page).to have_content(jfk.terminals)
  expect(page).to have_content(jfk.international_hub)
  end
end

RSpec.describe "Story5: When I visit an airport's available airlines page", type: :feature do
  it "displays airlines at specified airport and airline details" do
    jfk = Airport.create!(name: 'John F Kennedy', terminals: 175, international_hub: true)
    spirit = jfk.airlines.create!(name:'Spirit', flight_number: 424, domestic_flight: true)
    united = jfk.airlines.create!(name:'United', flight_number: 513, domestic_flight: true)

  visit "/airports/airports/#{jfk.id}/airlines"
  expect(page).to have_content(spirit.name)
  expect(page).to have_content(spirit.flight_number)
  expect(page).to have_content(spirit.domestic_flight)
  expect(page).to have_content(united.name)
  expect(page).to have_content(united.flight_number)
  expect(page).to have_content(united.domestic_flight)
  end
end
