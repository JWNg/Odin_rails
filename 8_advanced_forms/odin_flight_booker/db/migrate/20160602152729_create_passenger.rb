class CreatePassenger < ActiveRecord::Migration
  def change
    create_table :passengers do |t|
      t.string :name
      t.string :email
    end
  end
end
