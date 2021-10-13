require "pg"

class Bookmark
  def self.all
    db = PG.connect(dbname: "bookmark_manager")
    results = db.exec("SELECT * FROM bookmarks;")
    results.map { |bookmark| bookmark["url"] }
  end
end
