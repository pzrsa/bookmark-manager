require "pg"

class Bookmark
  def self.all
    if ENV["ENVIRONMENT"] == "test"
      db = PG.connect(dbname: "bookmark_manager_test")
    else
      db = PG.connect(dbname: "bookmark_manager")
    end
    results = db.exec("SELECT * FROM bookmarks;")
    results.map { |bookmark| bookmark["url"] }
  end
end
