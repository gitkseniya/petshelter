require 'rails_helper'

RSpec.describe "Story14: When I visit a specific airlines page", type: :feature do
  it "I see a link to UPDATE AIRLINE" do
    jfk = Airport.create!(name: 'John F Kennedy', terminals: 175, international_hub: true)
    spirit = jfk.airlines.create!(name:'Spirit', flight_number: 424, domestic_flight: true)
    visit "/airlines/#{spirit.id}"

    click_link 'Update Airline'

    expect(current_path).to eq("/airlines/#{spirit.id}/edit")

    fill_in 'Name', with: 'Holy Haillines'
    fill_in 'Flight_Number', with: 1
    fill_in 'Domestic_Flight', with: false
    click_on 'Update Airline'

    expect(current_path).to eq("/airlines/#{spirit.id}")
    expect(page).to have_content('Holy Haillines')
    expect(page).to_not have_content('Spirit')
  end
end
