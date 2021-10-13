feature "view bookmarks" do
  scenario "user will view all bookmarks saved" do
    db = PG.connect(dbname: "bookmark_manager_test")

    Bookmark.add("http://www.makersacademy.com/")
    Bookmark.add("http://www.google.com/")
    Bookmark.add("http://www.destroyallsoftware.com")

    visit("/bookmarks")

    expect(page).to have_content("http://www.makersacademy.com/")
    expect(page).to have_content("http://www.google.com/")
    expect(page).to have_content("http://www.destroyallsoftware.com")
  end
end
