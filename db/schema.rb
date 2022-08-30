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

ActiveRecord::Schema.define(version: 2022_08_29_112012) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bids", force: :cascade do |t|
    t.text "currency"
    t.text "blockchain"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "price"
    t.integer "work_id"
    t.integer "user_id"
  end

  create_table "generes", force: :cascade do |t|
    t.integer "genre_id"
  end

  create_table "genres", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "genre_picture"
  end

  create_table "genres_works", force: :cascade do |t|
    t.integer "work_id"
    t.integer "genre_id"
  end

  create_table "properties", force: :cascade do |t|
    t.text "trait"
    t.text "trait_value"
    t.float "percentage"
    t.integer "work_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.text "name"
    t.date "dob"
    t.text "email"
    t.text "password_digest"
    t.text "profile_picture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "works", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "artist"
    t.integer "token_id"
    t.string "blockchain"
    t.integer "price"
    t.string "currency"
    t.text "picture"
    t.integer "user_id"
    t.integer "property_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
