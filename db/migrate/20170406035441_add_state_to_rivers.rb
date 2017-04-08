class AddStateToRivers < ActiveRecord::Migration[5.0]
  def change
    add_reference :rivers, :state, foreign_key: true
  end
end
