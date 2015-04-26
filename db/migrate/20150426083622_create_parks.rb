class CreateParks < ActiveRecord::Migration
  def change
    create_table :parks do |t|
      t.string :bluetooth
      t.integer :start_size
      t.string :location_name
      t.boolean :confirm
      t.integer :state
      t.references :user, index: true

      t.timestamps
    end
  end
end
