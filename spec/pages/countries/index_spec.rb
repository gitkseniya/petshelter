require 'rails_helper'


RSpec.describe "countires index page", type: :feature do
  it "shows all countries and citty counts" do
    england = Country.create!(name: 'England', population: 200, gdp: 50, has_monarch: true)
    us = Country.create!(name: 'US', population: 500, gdp: 100, has_monarch: false)

    york = england.cities.create!(name: 'York', population: 50, capital: false)
    new_york = us.cities.create!(name: 'New York', population: 250, capital: false)


    visit "/countries"

    expect(page).to have_content("#{us.name}: cities count = #{us.cities.length}")
    expect(page).to have_content("#{england.name}: cities count = #{england.cities.length}")

  end

  it "Shows a link to other pages" do

    visit "/countries"

    expect(page).to have_link("countries")
    expect(page).to have_link("cities")
  end

  it "shows right order for countries " do

    england = Country.create!(name: 'England', population: 200, gdp: 50, has_monarch: true)
    us = Country.create!(name: 'US', population: 500, gdp: 100, has_monarch: false)

    all = Country.all

    visit "/countries"
    assert_operator all.index(england), :<, all.index(us)
  end

end
