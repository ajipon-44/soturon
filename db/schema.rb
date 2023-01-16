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

ActiveRecord::Schema.define(version: 2021_10_13_084329) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "follows", force: :cascade do |t|
    t.bigint "virtual_user_id"
    t.bigint "follower_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["follower_id"], name: "index_follows_on_follower_id"
    t.index ["virtual_user_id", "follower_id"], name: "index_follows_on_virtual_user_id_and_follower_id", unique: true
    t.index ["virtual_user_id"], name: "index_follows_on_virtual_user_id"
  end

  create_table "goods", force: :cascade do |t|
    t.integer "virtual_user_id"
    t.integer "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.integer "virtual_user_id"
    t.text "body"
    t.string "image1"
    t.string "image2"
    t.string "image3"
    t.string "image4"
    t.integer "display_flag"
    t.date "date"
    t.integer "good"
    t.integer "retweet"
    t.integer "quote_tweet"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "replies", force: :cascade do |t|
    t.bigint "post_id"
    t.bigint "replied_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id", "replied_id"], name: "index_replies_on_post_id_and_replied_id", unique: true
    t.index ["post_id"], name: "index_replies_on_post_id"
    t.index ["replied_id"], name: "index_replies_on_replied_id"
  end

  create_table "virtual_users", force: :cascade do |t|
    t.string "name"
    t.string "sub_name"
    t.text "catch_copy"
    t.string "image"
    t.string "belonging"
    t.string "real_name"
    t.string "address"
    t.text "belonging_explanation", default: "特になし", null: false
    t.text "real_name_explanation", default: "特になし", null: false
    t.text "address_explanation", default: "特になし", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "follows", "virtual_users", column: "follower_id"
  add_foreign_key "replies", "posts", column: "replied_id"
end
