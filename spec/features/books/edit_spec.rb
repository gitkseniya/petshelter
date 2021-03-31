require 'rails_helper'

RSpec.describe 'edit book page', type: :feature do
  it 'can edit an existing book' do
    book = create(:book)

    visit "/books/#{book.id}"

    click_link 'Edit'
    expect(current_path).to eq("/books/#{book.id}/edit")

    fill_in 'name', with: 'This is a new Book Name'
    click_on 'Update Book'

    expect(current_path).to eq("/books/#{book.id}")

    expect(page).to have_content('This is a new Book Name')
  end
end
