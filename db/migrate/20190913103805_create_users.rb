class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.integer :role, default: 2, comment: '1. Admin 2. Customer'

      t.timestamps
    end
    add_index :users, :email, unique: true
  end
end
