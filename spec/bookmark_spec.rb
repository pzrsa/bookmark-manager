require "bookmark"

describe Bookmark do
  describe "#all" do
    it "returns all bookmarks" do
      db = PG.connect(dbname: "bookmark_manager_test")

      db.exec("INSERT INTO bookmarks (url) VALUES('http://www.makersacademy.com/')")
      db.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com/')")
      db.exec("INSERT INTO bookmarks (url) VALUES('http://www.destroyallsoftware.com')")

      bookmarks = Bookmark.all

      expect(bookmarks).to include("http://www.makersacademy.com/")
      expect(bookmarks).to include("http://www.google.com/")
      expect(bookmarks).to include("http://www.destroyallsoftware.com")
    end
  end
end
