class CreateParkCommunities < ActiveRecord::Migration[5.2]
  def change
    create_table :park_communities do |t|
      t.integer :community_id
      t.integer :dog_park_id
      
      t.timestamps
    end
  end
end
