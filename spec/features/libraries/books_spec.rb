require 'rails_helper'

RSpec.describe 'library books page', type: :feature do
  it 'can see all books that belong to a certain library' do
    library1 = create(:library)
    library2 = create(:library)

    book1 = create(:book, library_id: library1.id)
    book2 = create(:book, library_id: library1.id)
    book3 = create(:book, library_id: library2.id)

    visit "/libraries/#{library1.id}/books"

    expect(page).to have_content(book1.name)
    expect(page).not_to have_content(book3.name)
  end
end
