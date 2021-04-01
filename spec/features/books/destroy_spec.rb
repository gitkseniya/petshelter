require 'rails_helper'

RSpec.describe 'delete book page' do
  it 'I can delete a book' do
    book = create(:book)

    visit "/books/#{book.id}"

    click_link 'Delete'

    expect(current_path).to eq('/books')
    expect(page).to_not have_content(book.name)
    expect(page).to_not have_button('Delete')
  end
end
