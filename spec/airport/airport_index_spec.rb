require 'rails_helper'

RSpec.describe "airports index page", type: :feature do
  it "displays all airports" do
    jfk = Airport.create!(name: 'John F Kennedy', terminals: 175, international_hub: true)

  visit '/airports'
  expect(page).to have_content(jfk.name)
  end
end
