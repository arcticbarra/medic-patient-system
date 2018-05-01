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

ActiveRecord::Schema.define(version: 20180501024748) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "areas", force: :cascade do |t|
    t.bigint "doctor_id"
    t.string "name"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["doctor_id"], name: "index_areas_on_doctor_id"
  end

  create_table "doctors", force: :cascade do |t|
    t.bigint "person_id"
    t.integer "speciality"
    t.integer "years_experience"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "area_id"
    t.float "salary"
    t.index ["area_id"], name: "index_doctors_on_area_id"
    t.index ["person_id"], name: "index_doctors_on_person_id"
  end

  create_table "patients", force: :cascade do |t|
    t.bigint "person_id"
    t.integer "insurance_plan"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["person_id"], name: "index_patients_on_person_id"
  end

  create_table "people", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.date "dob"
    t.integer "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "treatments", force: :cascade do |t|
    t.bigint "patient_id"
    t.bigint "doctor_id"
    t.integer "duration"
    t.string "medicaments"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["doctor_id"], name: "index_treatments_on_doctor_id"
    t.index ["patient_id"], name: "index_treatments_on_patient_id"
  end

  add_foreign_key "areas", "doctors"
  add_foreign_key "doctors", "areas"
  add_foreign_key "doctors", "people"
  add_foreign_key "patients", "people"
  add_foreign_key "treatments", "doctors"
  add_foreign_key "treatments", "patients"
end
