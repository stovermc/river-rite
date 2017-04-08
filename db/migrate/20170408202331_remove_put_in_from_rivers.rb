class RemovePutInFromRivers < ActiveRecord::Migration[5.0]
  def change
    remove_column :rivers, :managing_agency, :string
    remove_column :rivers, :permit_type, :string
    remove_column :rivers, :application_fee, :integer
    remove_column :rivers, :permit_cost, :integer
    remove_column :rivers, :application_website, :string
  end
end
