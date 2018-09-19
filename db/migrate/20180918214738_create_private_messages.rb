class CreatePrivateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :private_messages do |t|
      :content
      :user_id
      :inbox_id

      t.timestamps
    end
  end
end
