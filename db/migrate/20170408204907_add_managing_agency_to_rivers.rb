class AddManagingAgencyToRivers < ActiveRecord::Migration[5.0]
  def change
    add_reference :rivers, :managing_agency, foreign_key: true
  end
end
