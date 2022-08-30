class CreateWorks < ActiveRecord::Migration[5.2]
  def change
    create_table :works do |t|
      t.string :name
      t.text :description
      t.string :artist
      t.integer :token_id
      t.string :blockchain
      t.integer :price
      t.string :currency
      t.text :picture
      t.integer :user_id
      t.integer :property_id

      t.timestamps
    end
  end
end
