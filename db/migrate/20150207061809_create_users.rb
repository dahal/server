class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users  do |t|
      t.timestamps null: false
      t.string :email, null: false
      t.string :encrypted_password, limit: 128, null: false
      t.string :confirmation_token, limit: 128
      t.string :remember_token, limit: 128, null: false
      t.integer :state_enum
      t.string :api_key
    end

    add_index :users, :email
    add_index :users, :remember_token
    add_index :users, :api_key
  end
end
