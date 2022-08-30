class AddPriceToBid < ActiveRecord::Migration[5.2]
  def change
    add_column :bids, :price, :float
  end
end
