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

ActiveRecord::Schema.define(version: 2019_01_18_001903) do

  create_table "events", id: :integer, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "title", limit: 45, null: false
    t.string "genre", limit: 45, null: false
    t.string "etype"
    t.text "description", null: false
    t.string "organiser", limit: 45, null: false
    t.date "day", null: false
    t.time "start_time", null: false
    t.string "city", limit: 45, null: false
    t.integer "place_id", null: false, unsigned: true
    t.datetime "updated_at"
    t.index ["place_id"], name: "place_id"
  end

  create_table "eventsaa", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "title", null: false
    t.string "genre", null: false
    t.text "description", null: false
    t.string "organiser", null: false
    t.datetime "day", null: false
    t.time "start_time", null: false
    t.string "city", null: false
    t.integer "place_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "histories", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "user_id", null: false, unsigned: true
    t.timestamp "order_data", null: false
    t.integer "event_id", null: false, unsigned: true
    t.string "status", limit: 1, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
  end

  create_table "places", id: :integer, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", limit: 45, null: false
  end

  create_table "tickets", id: :integer, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "etype"
    t.string "name", limit: 45, null: false
    t.integer "price", null: false
    t.integer "quantity", null: false
    t.integer "place_id", null: false, unsigned: true
    t.integer "total_income"
    t.bigint "user_id"
    t.index ["place_id"], name: "place_id"
    t.index ["user_id"], name: "index_tickets_on_user_id"
  end

  create_table "users", id: :integer, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", limit: 45, null: false
    t.string "surname", limit: 45, null: false
    t.date "birthday_date", null: false
    t.string "email", limit: 45, null: false
    t.string "encrypted_password", limit: 512, null: false
    t.string "phone", limit: 45, null: false
    t.string "address", limit: 45, null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "events", "places", name: "events_ibfk_1"
  add_foreign_key "tickets", "places", name: "tickets_ibfk_1"
end
