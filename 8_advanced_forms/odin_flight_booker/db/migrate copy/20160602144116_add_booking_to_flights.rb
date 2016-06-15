class AddBookingToFlights < ActiveRecord::Migration
  def change
    add_column :flights, :booking, :reference
  end
end
