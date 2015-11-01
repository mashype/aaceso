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

ActiveRecord::Schema.define(version: 20151101055058) do

  create_table "appointments", force: :cascade do |t|
    t.integer  "appointmenttype"
    t.boolean  "apptconfirmed"
    t.boolean  "apptcompleted"
    t.integer  "provider_id"
    t.integer  "patient_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "appointments", ["patient_id"], name: "index_appointments_on_patient_id"
  add_index "appointments", ["provider_id"], name: "index_appointments_on_provider_id"

  create_table "licenses", force: :cascade do |t|
    t.string   "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "licexpirations", force: :cascade do |t|
    t.string   "expiration_year"
    t.integer  "provider_id"
    t.integer  "license_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "licexpirations", ["license_id"], name: "index_licexpirations_on_license_id"
  add_index "licexpirations", ["provider_id"], name: "index_licexpirations_on_provider_id"

  create_table "locations", force: :cascade do |t|
    t.string   "street_1"
    t.string   "street_2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "provider_id"
  end

  add_index "locations", ["provider_id"], name: "index_locations_on_provider_id"

  create_table "patients", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "member_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "provider_id"
  end

  add_index "patients", ["provider_id"], name: "index_patients_on_provider_id"

  create_table "plan_statuses", force: :cascade do |t|
    t.integer  "provider_id"
    t.integer  "plan_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "accepted"
  end

  add_index "plan_statuses", ["plan_id"], name: "index_plan_statuses_on_plan_id"
  add_index "plan_statuses", ["provider_id"], name: "index_plan_statuses_on_provider_id"

  create_table "plans", force: :cascade do |t|
    t.string   "carrier_name"
    t.string   "plan_name"
    t.string   "plan_type"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "providers", force: :cascade do |t|
    t.string   "name"
    t.string   "npi"
    t.integer  "user_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "specialty_id"
  end

  add_index "providers", ["specialty_id"], name: "index_providers_on_specialty_id"

  create_table "provlocations", force: :cascade do |t|
    t.integer  "location_type"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "specialties", force: :cascade do |t|
    t.string   "specialty"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "usertype_id"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "usertypes", force: :cascade do |t|
    t.string   "usertypename"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
