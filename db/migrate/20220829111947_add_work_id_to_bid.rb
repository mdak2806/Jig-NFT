class AddWorkIdToBid < ActiveRecord::Migration[5.2]
  def change
    add_column :bids, :work_id, :integer
  end
end
