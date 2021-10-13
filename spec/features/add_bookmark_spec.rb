feature "add bookmarks" do
  scenario "user will add a bookmark" do
    visit("/add")

    fill_in "add_bookmark_title", with: "Makers Academy"
    fill_in "add_bookmark_url", with: "http://www.makersacademy.com/"
    click_button "Add"
    expect(page).to have_content("Makers Academy")
  end
end
