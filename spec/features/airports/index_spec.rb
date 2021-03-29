require 'rails_helper'

RSpec.describe "Story1: When I visit the airports index page", type: :feature do
  it "displays all airports" do
    jfk = Airport.create!(name: 'John F Kennedy', terminals: 175, international_hub: true)

  visit '/airports'
  expect(page).to have_content(jfk.name)
  end
end

RSpec.describe "Story6: When I visit airport index page", type: :feature do
  it "displays all airports ordered by most recently created" do
    ord = Airport.create!(name: "Chicago O' Hare", terminals: 4, international_hub: true)
    jfk = Airport.create!(name: 'John F Kennedy', terminals: 175, international_hub: true)
    all = Airport.all

    visit '/airports'
    assert_operator all.index(jfk), :>, all.index(ord)
  end
end

RSpec.describe "Story9: When I visit any page", type: :feature do
  it "displays link to airports index" do
    jfk = Airport.create!(name: 'John F Kennedy', terminals: 175, international_hub: true)
    spirit = jfk.airlines.create!(name:'Spirit', flight_number: 424, domestic_flight: true)
    united = jfk.airlines.create!(name:'United', flight_number: 513, domestic_flight: true)

    visit "/airports/#{jfk.id}"
    expect(page).to have_link("Back to All Airports")
    visit "/airports/airports/#{jfk.id}/airlines"
    expect(page).to have_link("All Airports")
    visit "/airlines"
    expect(page).to have_link("Airports")
    visit "/airlines/#{spirit.id}"
    expect(page).to have_link("Airports")
    visit "/airlines/#{united.id}"
    expect(page).to have_link("Airports")
  end
end
