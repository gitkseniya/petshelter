require 'rails_helper'

RSpec.describe 'New Country', type: :feature do
  describe 'As a visitor' do
    describe 'When I visit the new country form by clicking a link on the index' do
      it 'I can create a new country' do

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
