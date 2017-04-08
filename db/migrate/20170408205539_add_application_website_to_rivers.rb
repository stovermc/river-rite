class AddApplicationWebsiteToRivers < ActiveRecord::Migration[5.0]
  def change
    add_reference :rivers, :application_website, foreign_key: true
  end
end
