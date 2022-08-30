class AddGenrePictureToGenres < ActiveRecord::Migration[5.2]
  def change
    add_column :genres, :genre_picture, :text
  end
end
