require 'rails_helper'

RSpec.describe 'edit library page', type: :feature do
  it 'can edit an existing library' do
    library = create(:library, name: 'Windom Earle')

    visit "/libraries/#{library.id}"

    click_link 'Edit'
    expect(current_path).to eq("/libraries/#{library.id}/edit")

    fill_in 'library[name]', with: 'This is a new Library Name'
    click_on 'submit'

    expect(current_path).to eq("/libraries/#{library.id}")
    expect(page).to have_content('This is a new Library Name')
    expect(page).not_to have_content('Windom Earle')
  end
end
