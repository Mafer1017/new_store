class AddGenreToAlbums < ActiveRecord::Migration[6.1]
  def change
    add_column(:albums, :genre, :string)
  end
end
