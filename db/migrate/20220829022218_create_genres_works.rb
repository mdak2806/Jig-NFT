class CreateGenresWorks < ActiveRecord::Migration[5.2]
  def change
    create_table :genres_works do |t|
      t.integer :work_id
      t.integer :genre_id
    end
  end
end
