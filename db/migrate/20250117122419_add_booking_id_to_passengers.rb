class AddBookingIdToPassengers < ActiveRecord::Migration[7.2]
  def change
    add_column :passengers, :booking_id, :integer
    add_foreign_key :passengers, :bookings
    add_index :passengers, :booking_id
  end
end
