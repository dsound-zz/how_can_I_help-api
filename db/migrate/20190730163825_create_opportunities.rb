class CreateOpportunities < ActiveRecord::Migration[5.2]
  def change
    create_table :opportunities do |t|
      t.string :title 
      t.integer :hits 
      t.string :summary 
      t.boolean :priority 
      t.string :organization
      t.string :url 
      t.datetime :start_time
      t.integer :hours
      t.date :created_date 
      t.date :start_time
      t.date :end_date 
      t.string :status 
      t.integer :community_board
      t.integer :community_council 
      t.integer :category_id 
      t.timestamps
    end
  end
end
