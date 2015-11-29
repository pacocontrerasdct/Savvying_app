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

ActiveRecord::Schema.define(version: 20151128184719) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.string   "name_item"
    t.text     "description_item"
    t.string   "price"
    t.text     "image_to_upload_filename"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "store_id"
    t.integer  "category_id"
    t.text     "image_to_upload"
  end

  create_table "shop_lists", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "item_id"
    t.integer  "store_id"
  end

  create_table "stores", force: :cascade do |t|
    t.string   "name_store"
    t.string   "post_code"
    t.text     "description_store"
    t.string   "phone"
    t.string   "open_hours"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

end
