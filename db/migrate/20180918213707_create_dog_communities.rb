class CreateDogCommunities < ActiveRecord::Migration[5.2]
  def change
    create_table :dog_communities do |t|
      t.integer :dog_id
      t.integer :dog_park_id

      t.timestamps
    end
  end
end
