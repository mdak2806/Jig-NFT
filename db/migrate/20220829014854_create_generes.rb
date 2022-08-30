class CreateGeneres < ActiveRecord::Migration[5.2]
  def change
    create_table :generes do |t|
      t.integer :genre_id
    end
  end
end
