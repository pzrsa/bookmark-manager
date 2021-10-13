require "sinatra"
require "sinatra/reloader"
require "./lib/bookmark"

class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get "/" do
    "Welcome to the Bookmark Manager! Here you can store all your favourite websites."
  end

  get "/bookmarks" do
    @bookmarks = Bookmark.all

    erb(:bookmarks)
  end

  get "/add" do
    erb(:add)
  end

  post "/add_bookmark" do
    @new_bookmark = params[:add_bookmark]
    Bookmark.add(@new_bookmark)
    redirect("/bookmarks")
  end
end
