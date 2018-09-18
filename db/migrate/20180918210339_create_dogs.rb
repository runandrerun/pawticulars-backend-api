class CreateDogs < ActiveRecord::Migration[5.2]
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :breed
      t.text :bio
      t.string :size
      t.string :temperament
      t.string :energy
      t.string :gender
      t.integer :age
      t.weight :weight

      t.timestamps
    end
  end
end
