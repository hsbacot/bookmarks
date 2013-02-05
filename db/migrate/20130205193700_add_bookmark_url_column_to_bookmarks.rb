class AddBookmarkUrlColumnToBookmarks < ActiveRecord::Migration
  def change
    add_column :bookmarks, :bookmark_url, :string
  end
end
