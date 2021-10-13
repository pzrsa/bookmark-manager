require "pg"

def setup_test_db
  p "Setting up test db..."

  db = PG.connect(dbname: "bookmark_manager_test")

  db.exec("TRUNCATE TABLE bookmarks RESTART IDENTITY;")
end
