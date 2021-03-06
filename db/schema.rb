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

ActiveRecord::Schema.define(version: 2022_06_06_083247) do

  create_table "answers", force: :cascade do |t|
    t.integer "virtual_user_id"
    t.integer "danger_level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "follows", force: :cascade do |t|
    t.integer "virtual_user_id"
    t.integer "follower_id"
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
    t.date "date"
    t.integer "good"
    t.integer "retweet"
    t.integer "quote_tweet"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "display_flag"
  end

  create_table "quote_tweets", force: :cascade do |t|
    t.integer "user_id"
    t.integer "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "replies", force: :cascade do |t|
    t.integer "post_id"
    t.integer "replied_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id", "replied_id"], name: "index_replies_on_post_id_and_replied_id", unique: true
    t.index ["post_id"], name: "index_replies_on_post_id"
    t.index ["replied_id"], name: "index_replies_on_replied_id"
  end

  create_table "retweets", force: :cascade do |t|
    t.integer "user_id"
    t.integer "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string "name"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tests", force: :cascade do |t|
    t.integer "real_user_id"
    t.string "teacher"
    t.integer "score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_answers", force: :cascade do |t|
    t.string "user_id"
    t.binary "image", limit: 1048576
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "virtual_users", force: :cascade do |t|
    t.string "name"
    t.string "sub_name"
    t.integer "follow"
    t.integer "follower"
    t.text "catch_copy"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
