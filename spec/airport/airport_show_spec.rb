require 'rails_helper'

RSpec.describe "airport details page", type: :feature do
  it "displays airport details" do
    jfk = Airport.create!(name: 'John F Kennedy', terminals: 175, international_hub: true)

  visit "/airports/#{jfk.id}"
  expect(page).to have_content(jfk.name)
  expect(page).to have_content(jfk.terminals)
  expect(page).to have_content(jfk.international_hub)
  end
end
