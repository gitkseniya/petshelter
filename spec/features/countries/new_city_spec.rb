require 'rails_helper'

RSpec.describe 'Create City', type: :feature do
  describe 'As a visitor' do
    describe 'When I wan to create a city' do
      it 'I can make a new city' do

        england = Country.create!(name: 'England', population: 200, gdp: 50, has_monarch: true)
        us = Country.create!(name: 'US', population: 500, gdp: 100, has_monarch: false)

        london = england.cities.create!(name: 'London', population: 100, capital: true)
        york = england.cities.create!(name: 'York', population: 50, capital: false)

        new_york = us.cities.create!(name: 'New York', population: 250, capital: false)
        denver = us.cities.create!(name: 'Denver', population: 50, capital: false)

        visit "/countries/#{us.id}"

        click_link 'Create City'

        expect(current_path).to eq("/countries/#{us.id}/cities/new")

        fill_in :name, with: 'Charlston'
        fill_in :population, with: '10'
        fill_in :capital, with: 'false'

        click_on 'Create City'

        expect(current_path).to eq("/countries/#{us.id}/cities")

        expect(page).to have_content('Charlston')
        expect(page).to have_content('10')
        expect(page).to have_content('false')
      end
    end
  end
end
