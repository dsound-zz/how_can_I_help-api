class CreateSodaApis < ActiveRecord::Migration[5.2]
  def change
    create_table :soda_apis do |t|

      t.timestamps
    end
  end
end
