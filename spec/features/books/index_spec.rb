require 'rails_helper'

RSpec.describe "books index page", type: :feature do
  before :each do
    @book1 = create(:book)
    @book2 = create(:book)
    @book3 = create(:book)

    @all = Book.all

    visit "/books"
    # save_and_open_page
  end

  it "can see all books with links to show pages" do
    expect(page).to have_content(@book1.name)
    expect(page).to have_content(@book2.name)
    expect(page).to have_content(@book3.name)
  end

  it "shows a link to book index at the top of the page" do
    expect(page).to have_link("Books")
  end

  it "shows a link to library index at the top of the page" do
    expect(page).to have_link("Libraries")
  end
end
