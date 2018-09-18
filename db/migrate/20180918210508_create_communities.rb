class CreateCommunities < ActiveRecord::Migration[5.2]
  def change
    create_table :communities do |t|
      t.string :title
      t.string :description
      
      t.timestamps
    end
  end
end
