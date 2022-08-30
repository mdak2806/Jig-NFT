class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.text :name
      t.date :dob
      t.text :email
      t.text :password_digest
      t.text :profile_picture

      t.timestamps
    end
  end
end
