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

RSpec.describe "Story7: When I visit airport index", type: :feature do
  it "displays count of number of airlines associated with airport" do
    jfk = Airport.create!(name: 'John F Kennedy', terminals: 6, international_hub: true)
    jfk.airlines.create!(name:'Delta', flight_number: 717, domestic_flight: true)
    jfk.airlines.create!(name:'United', flight_number: 431, domestic_flight: false)
    jfk.airlines.create!(name:'American', flight_number: 414, domestic_flight: true)
    visit "/airports/#{jfk.id}"
    expect(page).to have_content("Airlines At This Airport (3)")

    ord = Airport.create!(name: "Chicago O' Hare", terminals: 4, international_hub: true)
    ord.airlines.create!(name:'Spirit', flight_number: 714, domestic_flight: true)
    ord.airlines.create!(name:'Frontier', flight_number: 117, domestic_flight: true)
    visit "/airports/#{ord.id}"
    expect(page).to have_content("Airlines At This Airport (2)")
  end
end
