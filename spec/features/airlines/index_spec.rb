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

RSpec.describe "Story8: When I visit any page", type: :feature do
  it "displays link to airlines index" do
    jfk = Airport.create!(name: 'John F Kennedy', terminals: 175, international_hub: true)
    spirit = jfk.airlines.create!(name:'Spirit', flight_number: 424, domestic_flight: true)
    united = jfk.airlines.create!(name:'United', flight_number: 513, domestic_flight: true)

    visit "/airports"
    expect(page).to have_link("Airlines")
    visit "/airports/#{jfk.id}"
    expect(page).to have_link("Airlines")
    visit "/airports/airports/#{jfk.id}/airlines"
    expect(page).to have_link("All Airlines")
    visit "/airlines/#{spirit.id}"
    expect(page).to have_link("Back to All Airlines")
    visit "/airlines/#{united.id}"
    expect(page).to have_link("Back to All Airlines")
  end
end
