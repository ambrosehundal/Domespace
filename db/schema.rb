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

ActiveRecord::Schema.define(version: 2019_01_20_085217) do

  create_table "appointments", force: :cascade do |t|
    t.string "title"
    t.string "location"
    t.date "check_in"
    t.date "check_out"
    t.integer "party_size"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "facility_id"
    t.index ["facility_id"], name: "index_appointments_on_facility_id"
  end

  create_table "facilities", force: :cascade do |t|
    t.string "title"
    t.string "location"
    t.integer "capacity"
    t.string "environment"
    t.string "reviews"
    t.string "comments"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "price"
  end

end
