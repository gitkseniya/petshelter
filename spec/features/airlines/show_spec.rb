require 'rails_helper'

RSpec.describe "Story4: When I visit airline details page", type: :feature do
  it "displays airline details" do
    jfk = Airport.create!(name: 'John F Kennedy', terminals: 175, international_hub: true)
    spirit = jfk.airlines.create!(name:'Spirit', flight_number: 424, domestic_flight: true)
    united = jfk.airlines.create!(name:'United', flight_number: 513, domestic_flight: true)

    visit "/airlines/#{spirit.id}"
    expect(page).to have_content(spirit.name)
    expect(page).to have_content(spirit.flight_number)
    expect(page).to have_content(spirit.domestic_flight)
    visit "/airlines/#{united.id}"
    expect(page).to have_content(united.name)
    expect(page).to have_content(united.flight_number)
    expect(page).to have_content(united.domestic_flight)
  end
end

RSpec.describe "Story5: When I visit airlines at airport", type: :feature do
  it "displays all airlines available at selected airport, and their details" do
    jfk = Airport.create!(name: 'John F Kennedy', terminals: 175, international_hub: true)
    spirit = jfk.airlines.create!(name:'Spirit', flight_number: 424, domestic_flight: true)
    united = jfk.airlines.create!(name:'United', flight_number: 513, domestic_flight: true)

    ord = Airport.create!(name: "Chicago O' Hare", terminals: 4, international_hub: true)
    southwest = ord.airlines.create!(name:'Southwest', flight_number: 222, domestic_flight: true)
    frontier = ord.airlines.create!(name:'Frontier', flight_number: 117, domestic_flight: true)

    visit "airports/airports/#{jfk.id}/airlines"
    expect(page).to have_content(spirit.name)
    expect(page).to have_content(united.name)
    expect(page).not_to have_content(frontier.name)

    visit "/airports/airports/#{ord.id}/airlines"
    expect(page).to have_content(southwest.name)
    expect(page).to have_content(frontier.name)
    expect(page).not_to have_content(spirit.name)
  end
end
