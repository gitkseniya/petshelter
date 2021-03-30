require 'rails_helper'

RSpec.describe 'library show page', type: :feature do
  before :each do
    @library1 = create(:library)
    visit "/libraries/#{@library1.id}"
  end

  it 'can see library with all attributes' do
    # save_and_open_page
    expect(page).to have_content(@library1.name)
    expect(page).to have_content(@library1.id)
    expect(page).to have_content(@library1.district_num)
    expect(page).to have_content(@library1.public)
    expect(page).to have_content(@library1.created_at.to_formatted_s(:long))
    expect(page).to have_content(@library1.updated_at.to_formatted_s(:long))
    expect(page).to have_content(@library1.books.count)
  end

  it 'shows a link to all libraries at the top of the page' do
    expect(page).to have_link('Libraries')
  end

  it 'shows a link to all books at the top of the page' do
    expect(page).to have_link('Books')
  end

  it 'shows a link to all books in the current library' do
    expect(page).to have_link('Books we have')
  end
end
