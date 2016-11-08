class CreateAvailableDays < ActiveRecord::Migration[5.0]
  def change
    create_table :available_days do |t|
      t.date :date
      t.boolean :available

      t.timestamps
    end
  end
end
