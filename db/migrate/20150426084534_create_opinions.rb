class CreateOpinions < ActiveRecord::Migration
  def change
    create_table :opinions do |t|
      t.text :content
      t.integer :state
      t.string :user

      t.timestamps
    end
  end
end
