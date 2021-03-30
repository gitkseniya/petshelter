require 'rails_helper'

RSpec.describe 'books show page', type: :feature do
  before :each do
    @book1 = create(:book)

    visit "/books/#{@book1.id}"
  end

  it 'shows a link to a parent table at the top of the page' do
    expect(page).to have_link('Libraries')
  end

  it 'shows a link to a child table at the top of the page' do
    expect(page).to have_link('Books')
  end

  it 'shows book and all of its attributes' do
    expect(page).to have_content(@book1.name)
    expect(page).to have_content(@book1.author)
    expect(page).to have_content(@book1.id)
    expect(page).to have_content(@book1.library_id)
    expect(page).to have_content(@book1.available)
    expect(page).to have_content(@book1.rating)
    expect(page).to have_content(@book1.created_at.to_formatted_s(:long))
    expect(page).to have_content(@book1.updated_at.to_formatted_s(:long))
  end
end
