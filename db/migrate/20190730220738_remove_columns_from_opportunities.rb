class RemoveColumnsFromOpportunities < ActiveRecord::Migration[5.2]
  def change
    remove_column :opportunities, :created_date
    remove_column :opportunities, :end_date
    add_column :opportunities, :created_date, :datetime
    add_column :opportunities, :end_date, :datetime 

  end
end
