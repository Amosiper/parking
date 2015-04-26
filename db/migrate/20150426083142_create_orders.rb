class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name
      t.string :des
      t.string :from
      t.decimal :spent_money
      t.integer :state
      t.references :user, index: true
      t.references :park, index: true

      t.timestamps
    end
  end
end
