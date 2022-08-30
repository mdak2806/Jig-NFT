class RemoveFieldNameFromBid < ActiveRecord::Migration[5.2]
  def change
    remove_column :bids, :price, :integer
  end
end
