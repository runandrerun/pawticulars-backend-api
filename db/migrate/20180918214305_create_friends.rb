class CreateFriends < ActiveRecord::Migration[5.2]
  def change
    create_table :friends do |t|
      t.string :sender
      t.string :recipient
      t.boolean :accepted

      t.timestamps
    end
  end
end
