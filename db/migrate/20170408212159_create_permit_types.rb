class CreatePermitTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :permit_types do |t|
      t.string :name
    end
  end
end
