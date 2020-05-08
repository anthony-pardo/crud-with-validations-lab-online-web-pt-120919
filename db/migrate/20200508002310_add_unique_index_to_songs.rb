class AddUniqueIndexToSongs < ActiveRecord::Migration[5.0]
  def change
    add_index :songs, [:title, :artist_name, :release_year], unique: true
  end
end
