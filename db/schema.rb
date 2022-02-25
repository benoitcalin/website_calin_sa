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

ActiveRecord::Schema.define(version: 2022_02_25_091346) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "professional_equalities", force: :cascade do |t|
    t.string "technical_name", default: ""
    t.string "year", default: ""
    t.string "index", default: ""
    t.string "pay_gap_result", default: ""
    t.string "pay_gap_points", default: ""
    t.string "increase_gap_result", default: ""
    t.string "increase_gap_points", default: ""
    t.string "maternity_increase_result", default: ""
    t.string "maternity_increase_points", default: ""
    t.string "high_remuneration_result", default: ""
    t.string "high_remuneration_points", default: ""
    t.text "actions_comment", default: ""
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sites", force: :cascade do |t|
    t.float "latitude"
    t.float "longitude"
    t.string "name"
    t.string "color"
    t.string "kind"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
