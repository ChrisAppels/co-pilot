class FixColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :planes, :image, :photo
  end
end
