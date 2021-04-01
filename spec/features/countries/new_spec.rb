
require 'rails_helper'

RSpec.describe 'New Country', type: :feature do
  describe 'As a visitor' do
    describe 'When I visit the new country form by clicking a link on the index' do
      it 'I can create a new country' do


      #
      # england = Country.create!(name: 'England', population: 200, gdp: 50, has_monarch: true)
      # us = Country.create!(name: 'US', population: 500, gdp: 100, has_monarch: false)

      visit '/countries'



       click_link 'new countries'

       expect(current_path).to eq('/countries/new')


        fill_in 'task[name]', with: 'Gondor'
        fill_in 'task[population]', with: '50'
        fill_in 'task[gdp]', with: '25'
        fill_in 'task[has_monarch]', with: 'false'

        click_on 'submit'

        expect(current_path).to eq("/countries")
        expect(page).to have_content('Gondor')
      end
    end
  end
end











# require 'rails_helper'
#
# RSpec.describe 'New Artist' do
#   describe 'As a visitor' do
#     describe 'When I visit the new artist form by clicking a link on the index' do
#       it 'I can create a new artist' do
#         visit '/artists'
#
#         click_link 'New Artist'
#
#         expect(current_path).to eq('/artists/new')
#
#         fill_in 'Name', with: 'Megan'
#         click_on 'Create Artist'
#
#         expect(current_path).to eq("/artists")
#         expect(page).to have_content('Megan')
#       end
#     end
#   end
# end
