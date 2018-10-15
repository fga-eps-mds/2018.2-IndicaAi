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

ActiveRecord::Schema.define(version: 20181015191753) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "favorite_locals", force: :cascade do |t|
    t.string "label"
    t.text "body"
    t.bigint "local_id"
    t.bigint "user_identifier_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["local_id"], name: "index_favorite_locals_on_local_id"
    t.index ["user_identifier_id"], name: "index_favorite_locals_on_user_identifier_id"
  end

  create_table "local_ratings", force: :cascade do |t|
    t.integer "value"
    t.bigint "local_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["local_id"], name: "index_local_ratings_on_local_id"
  end

  create_table "locals", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_identifiers", force: :cascade do |t|
    t.integer "identifier"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_rates", force: :cascade do |t|
    t.integer "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "favorite_locals", "locals"
  add_foreign_key "favorite_locals", "user_identifiers"
  add_foreign_key "local_ratings", "locals"
end
