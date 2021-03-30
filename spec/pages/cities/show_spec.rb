require 'rails_helper'

RSpec.describe "cities show page", type: :feature do
  it "displays city info" do
    england = Country.create!(name: 'England', population: 200, gdp: 50, has_monarch: true)
    us = Country.create!(name: 'US', population: 500, gdp: 100, has_monarch: false)

    york = england.cities.create!(name: 'York', population: 50, capital: false)
    new_york = us.cities.create!(name: 'New York', population: 250, capital: false)


    visit "/cities/#{new_york.id}"


    expect(page).to have_content(new_york.name)
    expect(page).to have_content(new_york.population)
    expect(page).to have_content(new_york.capital)
    expect(page).to have_content("#{new_york.country_id} (aka #{us.name})")

  end

  it "Shows a link to other pages" do

    visit "/countries"

    expect(page).to have_link("countries")
    expect(page).to have_link("cities")
  end






end
