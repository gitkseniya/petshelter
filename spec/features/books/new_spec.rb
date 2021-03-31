require 'rails_helper'

RSpec.describe 'new book page', type: :feature do
  it 'can create a new book' do

    library = create(:library)

    visit "/libraries/#{library.id}/books"

    click_link 'New Book'

    expect(current_path).to eq("/libraries/#{library.id}/books/new")

    fill_in 'name', with: 'The Best Book of All Times'
    fill_in 'author', with: "Tyler Durden"
    fill_in 'rating', with: 5
    fill_in 'available', with: true

    click_on 'Create Book'

    expect(current_path).to eq("/libraries/#{library.id}/books")
    expect(page).to have_content('The Best Book of All Times')
    expect(page).to have_content(true)
    expect(page).not_to have_content('The Worst Book of All Times')
  end
end
