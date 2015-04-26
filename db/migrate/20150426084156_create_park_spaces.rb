class CreateParkSpaces < ActiveRecord::Migration
  def change
    create_table :park_spaces do |t|
      t.string :location_name
      t.integer :idle_num
      t.integer :state

      t.timestamps
    end
  end
end
