# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_05_16_193611) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cheeses", force: :cascade do |t|
    t.string "name"
    t.string "country"
    t.integer "strength"
    t.boolean "smelly"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "preferences", force: :cascade do |t|
    t.string "user"
    t.string "cheeses"
    t.integer "no_cheeses"
    t.boolean "tasty"
    t.bigint "user_id"
    t.bigint "cheese_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cheese_id"], name: "index_preferences_on_cheese_id"
    t.index ["user_id"], name: "index_preferences_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.boolean "cheese_lover"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "preferences", "cheeses"
  add_foreign_key "preferences", "users"
end
