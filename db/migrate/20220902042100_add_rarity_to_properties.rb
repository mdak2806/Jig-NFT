class AddRarityToProperties < ActiveRecord::Migration[5.2]
  def change
    add_column :properties, :rairty, :text
  end
end
