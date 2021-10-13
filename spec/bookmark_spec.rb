require "bookmark"

describe Bookmark do
  describe "#all" do
    it "returns all bookmarks" do
      db = PG.connect(dbname: "bookmark_manager_test")

      Bookmark.add("http://www.makersacademy.com/")
      Bookmark.add("http://www.google.com/")
      Bookmark.add("http://www.destroyallsoftware.com")

      bookmarks = Bookmark.all

      expect(bookmarks).to include("http://www.makersacademy.com/")
      expect(bookmarks).to include("http://www.google.com/")
      expect(bookmarks).to include("http://www.destroyallsoftware.com")
    end
  end

  describe "#add" do
    it "adds a new bookmark" do
      db = PG.connect(dbname: "bookmark_manager_test")

      Bookmark.add("http://www.google.com/")

      bookmarks = Bookmark.all

      expect(bookmarks).to include("http://www.google.com/")
    end
  end
end
