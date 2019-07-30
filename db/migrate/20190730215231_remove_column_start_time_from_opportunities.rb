class RemoveColumnStartTimeFromOpportunities < ActiveRecord::Migration[5.2]
  def change
    remove_column :opportunities, :start_time
    add_column :opportunities, :start_time, :datetime 
  end
end
