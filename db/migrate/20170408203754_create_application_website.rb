class CreateApplicationWebsite < ActiveRecord::Migration[5.0]
  def change
    create_table :application_websites do |t|
      t.string :website
    end
  end
end
