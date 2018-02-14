class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
    # change_column_null :users, :encrypted_password, true
    t.string :email, null: false
    t.string :name, null: false
    t.string :encrypted_password, limit:128, null: false
    t.string :confirmation_token, limit:128
    t.string :remember_token, limit: 128, null: false
    end

    add_index :users, :email
    add_index :users, :remember_token
  end
end