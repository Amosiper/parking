class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :password
      t.string :email
      t.string :avatar_path
      t.integer :phone_number
      t.string :car_brand
      t.string :remaining_money
      t.integer :state
      t.string :token

      t.timestamps
    end
  end
end
