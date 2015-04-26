class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :user_name
      t.text :content
      t.integer :start_size
      t.integer :state
      t.references :park, index: true

      t.timestamps
    end
  end
end
