class CreateManagingAgency < ActiveRecord::Migration[5.0]
  def change
    create_table :managing_agencies do |t|
      t.string :name
    end
  end
end
