class CreateVotes < ActiveRecord::Migration[8.0]
  def change
    create_table :votes do |t|
      t.references :user, null: false, foreign_key: true
      t.references :suggestion, null: false, foreign_key: true
      t.integer :vote

      t.timestamps
    end
    add_index :votes, [:user_id, :suggestion_id], unique: true
  end
end
