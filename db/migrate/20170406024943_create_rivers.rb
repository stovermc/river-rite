class CreateRivers < ActiveRecord::Migration[5.0]
  def change
    create_table :rivers do |t|
      t.string    :name
      t.string    :put_in
      t.string    :take_out
      t.integer   :length
      t.string    :managing_agency
      t.string    :permit_type
      t.integer   :application_fee
      t.integer   :permit_cost
      t.date      :deadline
      t.date      :drawing
      t.string    :application_website

      t.timestamp null: false
    end
  end
end
