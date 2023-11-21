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

ActiveRecord::Schema[7.1].define(version: 2023_11_16_215726) do
  create_table "admins", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "equipment", force: :cascade do |t|
    t.string "name"
    t.string "equipment_type"
    t.integer "admin_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admin_id"], name: "index_equipment_on_admin_id"
  end

  create_table "members", force: :cascade do |t|
    t.string "username"
    t.integer "age"
    t.string "gender"
    t.string "address"
    t.integer "admin_id", null: false
    t.integer "trainer_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admin_id"], name: "index_members_on_admin_id"
    t.index ["trainer_id"], name: "index_members_on_trainer_id"
  end

  create_table "pagy_tables", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "swappers", force: :cascade do |t|
    t.string "name"
    t.string "experience"
    t.integer "admin_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admin_id"], name: "index_swappers_on_admin_id"
  end

  create_table "trainers", force: :cascade do |t|
    t.string "name"
    t.string "specialization"
    t.integer "admin_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admin_id"], name: "index_trainers_on_admin_id"
  end

  add_foreign_key "equipment", "admins"
  add_foreign_key "members", "admins"
  add_foreign_key "members", "trainers"
  add_foreign_key "swappers", "admins"
  add_foreign_key "trainers", "admins"
end
