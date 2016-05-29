class RemoveNameFrombookings < ActiveRecord::Migration
  def change
    remove_column :bookings, :name, :string
    remove_column :bookings, :email, :string
  end
end
