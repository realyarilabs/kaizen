class CreateJoinTableSuggestionsTags < ActiveRecord::Migration[8.0]
  def change
    create_join_table :suggestions, :tags do |t|
      t.index :suggestion_id
      t.index :tag_id
      t.index [ :tag_id, :suggestion_id ], unique: true
    end
  end
end
