class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :picture
      t.boolean :admin, default: false
      t.string :password_digest
      t.string :remember_digest
      t.boolean :activated, default: false
      t.string :activation_digest
      t.datetime :activated_at
      t.integer :reputation
      t.index :email , unique: true
      t.timestamps
    end
  end
end
