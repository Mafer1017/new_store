class AddForeignKeyForSongs < ActiveRecord::Migration[6.1]
  def change
    add_foreign_key :songs, :albums
  end
end
