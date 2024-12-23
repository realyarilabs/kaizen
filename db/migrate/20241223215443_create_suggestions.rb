class CreateSuggestions < ActiveRecord::Migration[8.0]
  def change
    create_table :suggestions do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.text :root_cause
      t.text :solution, null: false
      t.text :benefits
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
