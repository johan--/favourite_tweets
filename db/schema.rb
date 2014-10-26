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

ActiveRecord::Schema.define(version: 20141026113009) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "media", force: true do |t|
    t.integer  "tweet_id"
    t.string   "media_type"
    t.text     "media_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tweets", force: true do |t|
    t.integer  "tweet_id",                     limit: 8
    t.string   "tweet_user_name"
    t.string   "tweet_user_screen_name"
    t.text     "tweet_user_profile_image_url"
    t.text     "message"
    t.string   "lang"
    t.boolean  "is_viewed",                              default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tweets", ["tweet_id"], name: "index_tweets_on_tweet_id", unique: true, using: :btree

end
