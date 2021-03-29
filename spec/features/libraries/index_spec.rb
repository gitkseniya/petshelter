require 'rails_helper'

RSpec.describe "library index page", type: :feature do
  before :each do
    @library1 = create(:library)
    @library2 = create(:library)
    @library3 = create(:library)

    @book1 = create(:book)

    visit "/libraries"
    # save_and_open_page
  end

  it "can see all libraries with links to show pages" do
    expect(page).to have_content(@library1.name)
    expect(page).to have_content(@library2.name)
    expect(page).to have_content(@library3.name)
    expect(page).not_to have_content(@book1)
  end


  it "returns all libraries sorted by the descending order they were created" do
    expect(@library2.name).to appear_before(@library1.name)
    expect(@library2.name).to_not appear_before(@library3.name)
  end

  it "shows a link to library index at the top of the page" do
    visit "/libraries"
    expect(page).to have_link("Libraries")
  end

  it "shows a link to book index table at the top of the page" do
    visit "/libraries"
    expect(page).to have_link("Books")
  end
end
