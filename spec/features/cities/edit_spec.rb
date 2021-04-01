require 'rails_helper'

RSpec.describe 'Edit City', type: :feature do
  describe 'As a visitor' do
    describe 'When I wan to eddit a city' do
      it 'I can edit  a city' do

        england = Country.create!(name: 'England', population: 200, gdp: 50, has_monarch: true)
        us = Country.create!(name: 'US', population: 500, gdp: 100, has_monarch: false)

        london = england.cities.create!(name: 'London', population: 100, capital: true)
        york = england.cities.create!(name: 'York', population: 50, capital: false)

        new_york = us.cities.create!(name: 'New York', population: 250, capital: false)
        denver = us.cities.create!(name: 'Denver', population: 50, capital: false)

        visit "/cities/#{denver.id}"

        click_link 'Update City'

        expect(current_path).to eq("/cities/#{denver.id}/edit")

        fill_in :name, with: 'Charlston'
        fill_in :population, with: '10'
        fill_in :capital, with: 'false'

        click_on 'Edit City'

        expect(current_path).to eq("/cities/#{denver.id}")

        expect(page).to have_content('Charlston')
        expect(page).to have_content('10')
        expect(page).to have_content('false')
      end
    end

    it " It Shows a link to other pages" do

      england = Country.create!(name: 'England', population: 200, gdp: 50, has_monarch: true)
      us = Country.create!(name: 'US', population: 500, gdp: 100, has_monarch: false)

      london = england.cities.create!(name: 'London', population: 100, capital: true)
      york = england.cities.create!(name: 'York', population: 50, capital: false)

      new_york = us.cities.create!(name: 'New York', population: 250, capital: false)
      denver = us.cities.create!(name: 'Denver', population: 50, capital: false)

      visit "/cities/#{denver.id}/edit"

      expect(page).to have_link("countries")
      expect(page).to have_link("cities")
    end
  end
end
