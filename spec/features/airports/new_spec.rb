require 'rails_helper'

RSpec.describe "Story11: When I visit the new airport form by clicking a link on the index", type: :feature do
  it "I can create a new airport" do
    visit '/airports'

    click_link 'New Airport'

    expect(current_path).to eq('/airports/new')

    fill_in 'Name', with: 'Wichita Dwight D. Eisenhower'
    fill_in 'Number of Terminals', with: '3'
    fill_in 'International Hub', with: 'false'
    click_on 'Create Airport'

    expect(current_path).to eq("/airports")
    expect(page).to have_content('Wichita Dwight D. Eisenhower')
  end
end
