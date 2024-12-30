class CreateJoinTableCategoriesSuggestions < ActiveRecord::Migration[8.0]
  def change
    create_join_table :categories, :suggestions do |t|
      t.index :suggestion_id
      t.index :category_id
      t.index [ :category_id, :suggestion_id ], unique: true
    end
  end
end
