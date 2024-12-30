class CreateUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email, null: false
      t.integer :role, null: false, default: 1, index: true
      t.boolean :active, null: false, default: true, index: true

      t.timestamps
    end
    add_index :users, :email, unique: true
  end
end
