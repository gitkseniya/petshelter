require 'rails_helper'

RSpec.describe 'delete library page' do
  it 'I can delete a library' do
    library = create(:library)

    visit "/libraries/#{library.id}"

    click_link 'Delete'

    expect(current_path).to eq('/libraries')
    expect(page).to_not have_content(library.name)
    expect(page).to_not have_button('Delete')
  end
end
