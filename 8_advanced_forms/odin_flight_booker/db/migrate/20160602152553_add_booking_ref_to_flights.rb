class AddBookingRefToFlights < ActiveRecord::Migration
  def change
    add_reference :flights, :booking, index: true, foreign_key: true
  end
end
