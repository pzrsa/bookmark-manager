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
    Bookmark.add(params[:add_bookmark_title], params[:add_bookmark_url])
    redirect("/bookmarks")
  end
end
