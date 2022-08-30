class CreateBids < ActiveRecord::Migration[5.2]
  def change
    create_table :bids do |t|
      t.integer :price
      t.text :currency
      t.text :blockchain

      t.timestamps
    end
  end
end
