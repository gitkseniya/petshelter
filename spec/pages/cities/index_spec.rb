require 'rails_helper'


RSpec.describe "cities index page", type: :feature do
  it "displays all cities" do
    england = Country.create!(name: 'England', population: 200, gdp: 50, has_monarch: true)
    us = Country.create!(name: 'US', population: 500, gdp: 100, has_monarch: false)

    york = england.cities.create!(name: 'York', population: 50, capital: false)
    new_york = us.cities.create!(name: 'New York', population: 250, capital: false)


    visit "/cities"


    expect(page).to have_content(new_york.name)
    expect(page).to have_content("#{new_york.population}, #{new_york.capital}, #{new_york.country_id}")

    expect(page).to have_content(york.name)
    expect(page).to have_content("#{york.population}, #{york.capital}, #{york.country_id}")
  end

  it "Shows a link to other pages" do

    visit "/countries"

    expect(page).to have_link("countries")
    expect(page).to have_link("cities")
  end

end
