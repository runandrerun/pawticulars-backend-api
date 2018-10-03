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

ActiveRecord::Schema.define(version: 2018_10_03_175152) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "communities", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dog_communities", force: :cascade do |t|
    t.integer "dog_id"
    t.integer "dog_park_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dog_parks", force: :cascade do |t|
    t.string "name"
    t.string "images"
    t.string "description"
    t.string "location"
    t.boolean "dog_run"
    t.boolean "off_leash"
    t.boolean "accessibility"
    t.float "lat"
    t.float "lng"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dogs", force: :cascade do |t|
    t.string "name"
    t.string "avatar"
    t.string "breed"
    t.text "bio"
    t.string "size"
    t.string "temperament"
    t.string "energy"
    t.string "gender"
    t.integer "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "friendships", force: :cascade do |t|
    t.string "popular_model_type"
    t.bigint "popular_model_id"
    t.string "friend_type"
    t.bigint "friend_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["friend_id", "friend_type"], name: "index_friendships_on_friend_id_and_friend_type"
    t.index ["friend_type", "friend_id"], name: "index_friendships_on_friend_type_and_friend_id"
    t.index ["popular_model_id", "popular_model_type"], name: "index_friendships_on_popular_model_id_and_popular_model_type"
    t.index ["popular_model_type", "popular_model_id"], name: "index_friendships_on_popular_model_type_and_popular_model_id"
  end

  create_table "inboxes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messages", force: :cascade do |t|
    t.text "content"
    t.integer "user_id"
    t.integer "community_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "park_communities", force: :cascade do |t|
    t.integer "community_id"
    t.integer "dog_park_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "private_messages", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_dogs", force: :cascade do |t|
    t.integer "user_id"
    t.integer "dog_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "email"
    t.text "bio"
    t.string "location"
    t.string "avatar"
    t.string "display_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
