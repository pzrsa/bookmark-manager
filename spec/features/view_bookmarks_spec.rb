feature "view bookmarks" do
  scenario "user will view all bookmarks saved" do
    db = PG.connect(dbname: "bookmark_manager_test")

    db.exec("INSERT INTO bookmarks (url) VALUES('http://www.makersacademy.com/')")
    db.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com/')")
    db.exec("INSERT INTO bookmarks (url) VALUES('http://www.destroyallsoftware.com')")

    visit("/bookmarks")

    expect(page).to have_content("http://www.makersacademy.com/")
    expect(page).to have_content("http://www.google.com/")
    expect(page).to have_content("http://www.destroyallsoftware.com")
  end
end
