require 'rails_helper'

RSpec.describe "Story12: When I visit a specific airport page", type: :feature do
  it "I see a link to update the parent called UPDATE PARENT" do
    jfk = Airport.create!(name: 'John F Kennedy', terminals: 6, international_hub: true)
    visit "airports/#{jfk.id}"

    click_link 'Update Airport'

    expect(current_path).to eq("/airports/#{jfk.id}/edit")

    fill_in 'Name', with: 'Newer JFK'
    click_on 'Update Airport'

    expect(current_path).to eq("airports/#{jfk.id}")
    expect(page).to have_content('Newer JFK')
    expect(page).to_not have_content('John F Kennedy')
  end
end
