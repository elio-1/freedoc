# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_02_04_175204) do

  create_table "appointments", force: :cascade do |t|
    t.date "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "doctor_id"
    t.integer "patient_id"
    t.integer "cities_id"
    t.index ["cities_id"], name: "index_appointments_on_cities_id"
    t.index ["doctor_id"], name: "index_appointments_on_doctor_id"
    t.index ["patient_id"], name: "index_appointments_on_patient_id"
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "doctors_id"
    t.integer "patients_id"
    t.integer "appointments_id"
    t.index ["appointments_id"], name: "index_cities_on_appointments_id"
    t.index ["doctors_id"], name: "index_cities_on_doctors_id"
    t.index ["patients_id"], name: "index_cities_on_patients_id"
  end

  create_table "doctors", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "zip_code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "cities_id"
    t.index ["cities_id"], name: "index_doctors_on_cities_id"
  end

  create_table "doctors_specialisations", id: false, force: :cascade do |t|
    t.integer "specialisation_id", null: false
    t.integer "doctor_id", null: false
    t.index ["doctor_id"], name: "index_doctors_specialisations_on_doctor_id"
    t.index ["specialisation_id"], name: "index_doctors_specialisations_on_specialisation_id"
  end

  create_table "patients", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "cities_id"
    t.index ["cities_id"], name: "index_patients_on_cities_id"
  end

  create_table "specialisations", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "appointments", "cities", column: "cities_id"
  add_foreign_key "appointments", "doctors"
  add_foreign_key "appointments", "patients"
  add_foreign_key "cities", "appointments", column: "appointments_id"
  add_foreign_key "cities", "doctors", column: "doctors_id"
  add_foreign_key "cities", "patients", column: "patients_id"
  add_foreign_key "doctors", "cities", column: "cities_id"
  add_foreign_key "patients", "cities", column: "cities_id"
end
