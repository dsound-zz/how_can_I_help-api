class CreateOpportunityCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :opportunity_categories do |t|

      t.timestamps
    end
  end
end
