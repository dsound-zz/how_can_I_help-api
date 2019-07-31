class AddColumnsToOpportunities < ActiveRecord::Migration[5.2]
  def change
    add_column :opportunities, :address, :string 
    add_column :opportunities, :city, :string 
    add_column :opportunities, :state, :string 
    add_column :opportunities, :zipcode, :string 
    add_column :opportunities, :borough, :string 
    add_column :opportunities, :latitude, :integer 
    add_column :opportunities, :longitude, :integer
  end
end
