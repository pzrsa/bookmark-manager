feature "view bookmarks" do
  scenario "user will view all bookmarks saved" do
    visit("/bookmarks")
    expect(page).to have_content("http://www.makersacademy.com/")
    expect(page).to have_content("http://www.google.com/")
    expect(page).to have_content("http://www.destroyallsoftware.com")
  end
end
