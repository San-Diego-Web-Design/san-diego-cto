class CreateFriends < ActiveRecord::Migration
  def change
    create_table :friends do |t|
      t.string :company
      t.string :description
      t.string :address
      t.string :telephone
      t.string :email

      t.timestamps
    end
  end
end
