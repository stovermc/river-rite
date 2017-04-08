class AddPermitCostToRivers < ActiveRecord::Migration[5.0]
  def change
    add_reference :rivers, :permit_cost, foreign_key: true
  end
end
