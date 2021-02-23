# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_11_17_114616) do

  create_table "artists", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "artist_name"
    t.text "artist_image"
    t.string "artist_profile"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reviews", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "title"
    t.text "review"
    t.string "artist_profile"
    t.integer "artist_id"
    t.integer "work_id"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "works", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.string "release_no"
    t.date "release_date"
    t.string "m1"
    t.string "m2"
    t.string "m3"
    t.string "m4"
    t.string "m5"
    t.string "m6"
    t.string "m7"
    t.string "m8"
    t.string "m9"
    t.string "m10"
    t.string "m11"
    t.string "m12"
    t.string "m13"
    t.string "m14"
    t.string "m15"
    t.string "m16"
    t.string "m17"
    t.string "m18"
    t.string "m19"
    t.string "m20"
    t.text "gaiyo"
    t.integer "artist_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
