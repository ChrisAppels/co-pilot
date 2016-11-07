class AddPlaneToBookings < ActiveRecord::Migration[5.0]
  def change
    add_reference :bookings, :plane, foreign_key: true
  end
end
