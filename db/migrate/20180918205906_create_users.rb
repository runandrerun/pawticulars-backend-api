class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :email
      t.text :bio
      t.string :location
      t.string :avatar
      t.string :display_name

      t.timestamps
    end
  end
end
