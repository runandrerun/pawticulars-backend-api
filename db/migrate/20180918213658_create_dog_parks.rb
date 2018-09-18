class CreateDogParks < ActiveRecord::Migration[5.2]
  def change
    create_table :dog_parks do |t|
      t.string :name
      t.string :description
      t.string :location
      t.boolean :dog_run
      t.boolean :off_leash
      t.boolean :accessibility
      t.float :lat
      t.float :lng

      t.timestamps
    end
  end
end
