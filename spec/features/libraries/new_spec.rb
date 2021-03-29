RSpec.describe 'new library page', type: :feature do

      it 'can create a new library' do
        visit '/libraries'

        click_link 'New Library'

        expect(current_path).to eq('/libraries/new')

        fill_in 'library[name]', with: 'The Best Library of All Times'
        fill_in 'library[district_num]', with: 7
        fill_in 'library[public]', with: true
        click_on 'submit'

        expect(current_path).to eq("/libraries")
        expect(page).to have_content('The Best Library of All Times')
    end
  end
