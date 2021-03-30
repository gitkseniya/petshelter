require 'rails_helper'

RSpec.describe 'books index page', type: :feature do
  before :each do
    @book1 = create(:book, available: true)
    @book2 = create(:book, available: false)
    @book3 = create(:book, available: true)

    visit '/books'
  end

  it 'can see all books with links to show pages' do
    expect(page).to have_content(@book1.name)
    expect(page).to have_content(@book3.name)
    expect(page).not_to have_content(@book2.name)
  end

  it 'shows a link to book index at the top of the page' do
    expect(page).to have_link('Books')
  end

  it 'shows a link to library index at the top of the page' do
    expect(page).to have_link('Libraries')
  end
end
