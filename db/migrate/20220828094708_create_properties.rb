class CreateProperties < ActiveRecord::Migration[5.2]
  def change
    create_table :properties do |t|
      t.text :trait
      t.text :trait_value
      t.float :percentage
      t.integer :work_id

      t.timestamps
    end
  end
end
