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

ActiveRecord::Schema.define(version: 2019_06_09_232938) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "books", force: :cascade do |t|
    t.text "name"
    t.string "author"
    t.bigint "key"
    t.date "publication"
    t.date "arrival"
    t.bigint "building_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["building_id"], name: "index_books_on_building_id"
  end

  create_table "buildings", force: :cascade do |t|
    t.bigint "number"
    t.text "name"
    t.text "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rents", force: :cascade do |t|
    t.bigint "book_id"
    t.bigint "user_id"
    t.date "give"
    t.date "giveback"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_rents_on_book_id"
    t.index ["user_id"], name: "index_rents_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "lastname"
    t.string "name"
    t.text "address"
    t.bigint "phone"
    t.bigint "number"
    t.bigint "building_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["building_id"], name: "index_users_on_building_id"
  end

  create_table "workers", force: :cascade do |t|
    t.string "lastname"
    t.string "name"
    t.date "boring"
    t.date "offer"
    t.string "lvl"
    t.text "edu"
    t.bigint "building_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["building_id"], name: "index_workers_on_building_id"
  end

  add_foreign_key "books", "buildings"
  add_foreign_key "rents", "books"
  add_foreign_key "rents", "users"
  add_foreign_key "users", "buildings"
  add_foreign_key "workers", "buildings"
end
