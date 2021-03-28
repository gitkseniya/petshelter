require 'rails_helper'


RSpec.describe "countires show page", type: :feature do
  it "shows all info from countries" do
    england = Country.create!(name: 'England', population: 200, gdp: 50, has_monarch: true)
    us = Country.create!(name: 'US', population: 500, gdp: 100, has_monarch: false)

    york = england.cities.create!(name: 'York', population: 50, capital: false)
    new_york = us.cities.create!(name: 'New York', population: 250, capital: false)
    denver = us.cities.create!(name: 'Denver', population: 50, capital: false)


    visit "/countries/#{us.id}/cities"

    expect(page).to have_content("#{us.name} cities")
    expect(page).to have_content("#{new_york.name}, #{new_york.population}, #{new_york.capital}")
    expect(page).to have_content("#{denver.name}, #{denver.population}, #{denver.capital}")

  end
  
  it "Shows a link to other pages" do

    visit "/countries"

    expect(page).to have_link("countries")
    expect(page).to have_link("cities")
  end

end
