require 'rails_helper'

RSpec.describe 'edit library page', type: :feature do
  it 'can edit an existing library' do
    library1 = create(:library, name: "Windom Earle")
    library2 = create(:library, name: "Donna Hayward")

    visit "/libraries/#{library1.id}"

    click_link 'Edit'
    expect(current_path).to eq("/libraries/#{library1.id}/edit")

    fill_in 'library[name]', with: 'This is a new Library Name'
    click_on 'submit'

    expect(current_path).to eq("/libraries/#{library1.id}")
    expect(page).to have_content('This is a new Library Name')
  end
end
