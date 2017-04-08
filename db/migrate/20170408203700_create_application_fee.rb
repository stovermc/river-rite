class CreateApplicationFee < ActiveRecord::Migration[5.0]
  def change
    create_table :application_fees do |t|
      t.string :price
    end
  end
end
