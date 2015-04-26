# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150426084534) do

  create_table "boards", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", force: true do |t|
    t.string   "user_name"
    t.text     "content"
    t.integer  "start_size"
    t.integer  "state"
    t.integer  "park_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["park_id"], name: "index_comments_on_park_id"

  create_table "news", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.integer  "state"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "news", ["user_id"], name: "index_news_on_user_id"

  create_table "opinions", force: true do |t|
    t.text     "content"
    t.integer  "state"
    t.string   "user"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: true do |t|
    t.string   "name"
    t.string   "des"
    t.string   "from"
    t.decimal  "spent_money"
    t.integer  "state"
    t.integer  "user_id"
    t.integer  "park_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "orders", ["park_id"], name: "index_orders_on_park_id"
  add_index "orders", ["user_id"], name: "index_orders_on_user_id"

  create_table "park_spaces", force: true do |t|
    t.string   "location_name"
    t.integer  "idle_num"
    t.integer  "state"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "parks", force: true do |t|
    t.string   "bluetooth"
    t.integer  "start_size"
    t.string   "location_name"
    t.boolean  "confirm"
    t.integer  "state"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "parks", ["user_id"], name: "index_parks_on_user_id"

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "password"
    t.string   "email"
    t.string   "avatar_path"
    t.integer  "phone_number"
    t.string   "car_brand"
    t.string   "remaining_money"
    t.integer  "state"
    t.string   "token"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
