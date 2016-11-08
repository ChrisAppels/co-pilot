class AddRemainingForeignKeys < ActiveRecord::Migration[5.0]
  def change
    add_reference :reviews, :user, foreign_key: true
    add_reference :reviews, :plane, foreign_key: true
    add_reference :planes, :user, foreign_key: true
    add_reference :available_days, :plane, foreign_key: true
  end
end
