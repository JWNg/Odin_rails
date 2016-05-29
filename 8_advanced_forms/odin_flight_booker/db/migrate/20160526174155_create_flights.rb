class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.string :start_id
      t.string :finish_id
      t.datetime :start_date_time
      t.integer :flight_duration

      t.timestamps null: false
    end
  end
end
