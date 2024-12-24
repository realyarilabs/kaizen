# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2024_12_24_143955) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories_suggestions", id: false, force: :cascade do |t|
    t.bigint "category_id", null: false
    t.bigint "suggestion_id", null: false
    t.index ["category_id", "suggestion_id"], name: "index_categories_suggestions_on_category_id_and_suggestion_id", unique: true
    t.index ["category_id"], name: "index_categories_suggestions_on_category_id"
    t.index ["suggestion_id"], name: "index_categories_suggestions_on_suggestion_id"
  end

  create_table "comments", force: :cascade do |t|
    t.text "content", null: false
    t.bigint "suggestion_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["suggestion_id"], name: "index_comments_on_suggestion_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "suggestions", force: :cascade do |t|
    t.string "title", null: false
    t.text "description", null: false
    t.text "root_cause"
    t.text "solution", null: false
    t.text "benefits"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_suggestions_on_user_id"
  end

  create_table "suggestions_tags", id: false, force: :cascade do |t|
    t.bigint "suggestion_id", null: false
    t.bigint "tag_id", null: false
    t.index ["suggestion_id", "tag_id"], name: "index_suggestions_tags_on_suggestion_id_and_tag_id", unique: true
    t.index ["suggestion_id"], name: "index_suggestions_tags_on_suggestion_id"
    t.index ["tag_id"], name: "index_suggestions_tags_on_tag_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_tags_on_name"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "email", null: false
    t.integer "role", default: 1, null: false
    t.boolean "active", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["active"], name: "index_users_on_active"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["role"], name: "index_users_on_role"
  end

  create_table "votes", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "suggestion_id", null: false
    t.integer "vote"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["suggestion_id"], name: "index_votes_on_suggestion_id"
    t.index ["user_id", "suggestion_id"], name: "index_votes_on_user_id_and_suggestion_id", unique: true
    t.index ["user_id"], name: "index_votes_on_user_id"
  end

  add_foreign_key "comments", "suggestions"
  add_foreign_key "comments", "users"
  add_foreign_key "suggestions", "users"
  add_foreign_key "votes", "suggestions"
  add_foreign_key "votes", "users"
end
