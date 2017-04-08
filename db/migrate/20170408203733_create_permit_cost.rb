class CreatePermitCost < ActiveRecord::Migration[5.0]
  def change
    create_table :permit_costs do |t|
      t.string :price
    end
  end
end
