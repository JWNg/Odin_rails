class AddFlightIdToBookings < ActiveRecord::Migration
  def change
    add_column :bookings, :flight, :string
    add_index :bookings, :flight
  end
end
