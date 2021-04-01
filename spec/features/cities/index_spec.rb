require 'rails_helper'


RSpec.describe "cities index page", type: :feature do
  it "displays all cities" do
    england = Country.create!(name: 'England', population: 200, gdp: 50, has_monarch: true)
    us = Country.create!(name: 'US', population: 500, gdp: 100, has_monarch: false)

    york = england.cities.create!(name: 'York', population: 50, capital: true)
    new_york = us.cities.create!(name: 'New York', population: 250, capital: false)
    washington = us.cities.create!(name: 'Washington', population: 150, capital: true)

    visit "/cities"

    expect(page).to have_content(washington.name)
    expect(page).to have_content("#{washington.population}, #{washington.capital}, #{washington.country_id}")

    expect(page).to have_no_content(new_york.name)
    expect(page).to have_no_content("#{new_york.population}, #{new_york.capital}, #{new_york.country_id}")

    expect(page).to have_content(york.name)
    expect(page).to have_content("#{york.population}, #{york.capital}, #{york.country_id}")
  end

  it "Shows a link to other pages" do

    us = Country.create!(name: 'US', population: 500, gdp: 100, has_monarch: false)
    england = Country.create!(name: 'England', population: 200, gdp: 50, has_monarch: true)

    york = england.cities.create!(name: 'York', population: 50, capital: true)
    new_york = us.cities.create!(name: 'New York', population: 250, capital: false)


    visit "/cities"

    expect(page).to have_link("countries")
    expect(page).to have_link("cities")
    expect(page).to have_link("Delete")
    expect(page).to have_link("Update #{york.name}")
    expect(page).to have_no_link("Update #{new_york.name}")

  end


  it 'it can deleat a city' do

    england = Country.create!(name: 'England', population: 200, gdp: 50, has_monarch: true)
    us = Country.create!(name: 'US', population: 500, gdp: 100, has_monarch: false)

    london = england.cities.create!(name: 'London', population: 100, capital: true)
    york = england.cities.create!(name: 'York', population: 50, capital: true)
    denver = us.cities.create!(name: 'Denver', population: 50, capital: true)


    visit "/cities/#{denver.id}"

    expect(page).to have_content('Denver')

    click_link 'Delete City'

    expect(current_path).to eq("/cities")

    expect(page).to have_content('London')
    expect(page).to have_no_content('Denver')
  end

end
