require 'rails_helper'


RSpec.describe "countires show page", type: :feature do
  it "shows all info from countries" do
    england = Country.create!(name: 'England', population: 200, gdp: 50, has_monarch: true)
    us = Country.create!(name: 'US', population: 500, gdp: 100, has_monarch: false)

    york = england.cities.create!(name: 'York', population: 50, capital: false)
    new_york = us.cities.create!(name: 'New York', population: 250, capital: false)


    visit "/countries/#{england.id}"

    expect(page).to have_content(england.name)
    expect(page).to have_content(england.population)
    expect(page).to have_content(england.gdp)
    expect(page).to have_content(england.has_monarch)

  end

  it "Shows a link to other pages" do

    visit "/countries"

    expect(page).to have_link("countries")
    expect(page).to have_link("cities")
  end

end
