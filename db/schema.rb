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

ActiveRecord::Schema.define(version: 2019_08_12_203502) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "caretaker_placements", force: :cascade do |t|
    t.bigint "record_id"
    t.bigint "caretaker_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["caretaker_id"], name: "index_caretaker_placements_on_caretaker_id"
    t.index ["record_id"], name: "index_caretaker_placements_on_record_id"
  end

  create_table "caretakers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "patient_placements", force: :cascade do |t|
    t.bigint "patient_id"
    t.bigint "wing_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_patient_placements_on_patient_id"
    t.index ["wing_id"], name: "index_patient_placements_on_wing_id"
  end

  create_table "patients", force: :cascade do |t|
    t.integer "age"
    t.string "sex"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
  end

  create_table "records", force: :cascade do |t|
    t.string "description"
    t.datetime "admitted_at"
    t.bigint "patient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_records_on_patient_id"
  end

  create_table "wings", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "caretaker_placements", "caretakers"
  add_foreign_key "caretaker_placements", "records"
  add_foreign_key "patient_placements", "patients"
  add_foreign_key "patient_placements", "wings"
  add_foreign_key "records", "patients"
end
