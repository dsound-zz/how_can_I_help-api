class CreateOpportunityLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :opportunity_locations do |t|
      t.integer :opportunity_id
      t.integer :location_id

      t.timestamps
    end
  end
end
