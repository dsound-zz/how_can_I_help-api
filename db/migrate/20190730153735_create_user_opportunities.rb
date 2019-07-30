class CreateUserOpportunities < ActiveRecord::Migration[5.2]
  def change
    create_table :user_opportunities do |t|
      t.integer :user_id
      t.integer :opportunity_id

      t.timestamps
    end
  end
end
