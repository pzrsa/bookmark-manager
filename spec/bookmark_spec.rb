describe Bookmark do
  describe "#all" do
    it "returns all bookmarks" do
      db = PG.connect(dbname: "bookmark_manager_test")

      Bookmark.add("Makers Academy", "http://www.makersacademy.com/")
      Bookmark.add("Google", "http://www.google.com/")
      Bookmark.add("Destroy Software", "http://www.destroyallsoftware.com")

      bookmarks = Bookmark.all

      expect(bookmarks).to include({ title: "Makers Academy", url: "http://www.makersacademy.com/" })
      expect(bookmarks).to include({ title: "Google", url: "http://www.google.com/" })
      expect(bookmarks).to include({ title: "Destroy Software", url: "http://www.destroyallsoftware.com" })
    end
  end

  describe "#add" do
    it "adds a new bookmark" do
      db = PG.connect(dbname: "bookmark_manager_test")

      Bookmark.add("Google", "http://www.google.com/")

      bookmarks = Bookmark.all

      expect(bookmarks).to include({ title: "Google", url: "http://www.google.com/" })
    end
  end
end
