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

ActiveRecord::Schema.define(version: 20161107172801) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "available_days", force: :cascade do |t|
    t.date     "date"
    t.boolean  "available"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "plane_id"
    t.index ["plane_id"], name: "index_available_days_on_plane_id", using: :btree
  end

  create_table "bookings", force: :cascade do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.integer  "plane_id"
    t.index ["plane_id"], name: "index_bookings_on_plane_id", using: :btree
    t.index ["user_id"], name: "index_bookings_on_user_id", using: :btree
  end

  create_table "planes", force: :cascade do |t|
    t.text     "description"
    t.string   "model"
    t.integer  "capacity"
    t.integer  "price"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
    t.string   "image"
    t.index ["user_id"], name: "index_planes_on_user_id", using: :btree
  end

  create_table "reviews", force: :cascade do |t|
    t.string   "content"
    t.integer  "stars"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.integer  "plane_id"
    t.index ["plane_id"], name: "index_reviews_on_plane_id", using: :btree
    t.index ["user_id"], name: "index_reviews_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "phone"
    t.string   "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "available_days", "planes"
  add_foreign_key "bookings", "planes"
  add_foreign_key "bookings", "users"
  add_foreign_key "planes", "users"
  add_foreign_key "reviews", "planes"
  add_foreign_key "reviews", "users"
end
