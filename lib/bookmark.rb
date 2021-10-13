require "pg"

class Bookmark
  def self.all
    if ENV["ENVIRONMENT"] == "test"
      db = PG.connect(dbname: "bookmark_manager_test")
    else
      db = PG.connect(dbname: "bookmark_manager")
    end
    results = db.exec("SELECT * FROM bookmarks;")
    results.map { |bookmark| { title: bookmark["title"], url: bookmark["url"] } }
  end

  def self.add(title, url)
    if ENV["ENVIRONMENT"] == "test"
      db = PG.connect(dbname: "bookmark_manager_test")
    else
      db = PG.connect(dbname: "bookmark_manager")
    end
    db.exec("INSERT INTO bookmarks (title, url) VALUES('#{title}', '#{url}');")
  end
end
