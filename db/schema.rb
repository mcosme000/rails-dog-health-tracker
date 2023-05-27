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

ActiveRecord::Schema[7.0].define(version: 2023_05_27_134647) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointments", force: :cascade do |t|
    t.bigint "dog_id", null: false
    t.bigint "establishment_id", null: false
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dog_id"], name: "index_appointments_on_dog_id"
    t.index ["establishment_id"], name: "index_appointments_on_establishment_id"
  end

  create_table "appointments_dogs", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "dog_id", null: false
    t.bigint "appointment_id", null: false
    t.index ["appointment_id"], name: "index_appointments_dogs_on_appointment_id"
    t.index ["dog_id"], name: "index_appointments_dogs_on_dog_id"
  end

  create_table "documents", force: :cascade do |t|
    t.bigint "dog_id", null: false
    t.string "name"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dog_id"], name: "index_documents_on_dog_id"
  end

  create_table "dogs", force: :cascade do |t|
    t.string "name"
    t.string "breed"
    t.integer "age"
    t.integer "weight"
    t.date "birthday"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dogs_users", id: false, force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "dog_id", null: false
  end

  create_table "establishments", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.string "address"
    t.integer "phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "appointments", "dogs"
  add_foreign_key "appointments", "establishments"
  add_foreign_key "appointments_dogs", "appointments"
  add_foreign_key "appointments_dogs", "dogs"
  add_foreign_key "documents", "dogs"
end
