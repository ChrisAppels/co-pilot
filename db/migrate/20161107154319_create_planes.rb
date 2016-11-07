class CreatePlanes < ActiveRecord::Migration[5.0]
  def change
    create_table :planes do |t|
      t.text :description
      t.string :model
      t.integer :capacity
      t.integer :price

      t.timestamps
    end
  end
end
