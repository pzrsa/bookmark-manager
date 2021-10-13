feature "add bookmarks" do
  scenario "user will add a bookmark" do
    visit("/add")

    fill_in "add_bookmark", with: "http://www.makersacademy.com/"
    click_button "Add"
    expect(page).to have_content("http://www.makersacademy.com/")
  end
end
