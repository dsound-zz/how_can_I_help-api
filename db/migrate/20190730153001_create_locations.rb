class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.string :address
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :bourogh
      t.integer :latitude
      t.integer :longitude

      t.timestamps
    end
  end
end
