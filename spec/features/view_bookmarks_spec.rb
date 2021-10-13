feature "view bookmarks" do
  scenario "user will view all bookmarks saved" do
    db = PG.connect(dbname: "bookmark_manager_test")

    Bookmark.add("Makers Academy", "http://www.makersacademy.com/")
    Bookmark.add("Google", "http://www.google.com/")
    Bookmark.add("Destroy Software", "http://www.destroyallsoftware.com")

    visit("/bookmarks")

    expect(page).to have_content("Makers Academy")
    expect(page).to have_content("Google")
    expect(page).to have_content("Destroy Software")
  end
end
