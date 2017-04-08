class CreateBoatRamps < ActiveRecord::Migration[5.0]
  def change
    create_table :boat_ramps do |t|
      t.string :name
    end
  end
end
