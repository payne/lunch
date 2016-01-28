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

ActiveRecord::Schema.define(version: 20160128020514) do

  create_table "groups", force: :cascade do |t|
    t.string   "name"
    t.float    "attendance_rate"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "zip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lunch_assignments", force: :cascade do |t|
    t.integer "lunch_event_id"
    t.integer "person_id"
  end

  add_index "lunch_assignments", ["lunch_event_id"], name: "index_lunch_assignments_on_lunch_event_id"
  add_index "lunch_assignments", ["person_id"], name: "index_lunch_assignments_on_person_id"

  create_table "lunch_events", force: :cascade do |t|
    t.date     "when"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "nick_name"
  end

  create_table "people", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "num_lunches"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
