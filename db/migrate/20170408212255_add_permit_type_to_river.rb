class AddPermitTypeToRiver < ActiveRecord::Migration[5.0]
  def change
    add_reference :rivers, :permit_type, foreign_key: true
  end
end
