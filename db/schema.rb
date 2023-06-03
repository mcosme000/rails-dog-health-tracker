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

ActiveRecord::Schema[7.0].define(version: 2023_06_03_123027) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointments", force: :cascade do |t|
    t.bigint "establishment_id"
    t.bigint "dog_id"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dog_id"], name: "index_appointments_on_dog_id"
    t.index ["establishment_id"], name: "index_appointments_on_establishment_id"
  end

  create_table "basics", force: :cascade do |t|
    t.string "category"
    t.integer "reminder"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cares", force: :cascade do |t|
    t.bigint "meal_id"
    t.bigint "basic_id"
    t.bigint "medication_id"
    t.bigint "poop_id"
    t.bigint "walk_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["basic_id"], name: "index_cares_on_basic_id"
    t.index ["meal_id"], name: "index_cares_on_meal_id"
    t.index ["medication_id"], name: "index_cares_on_medication_id"
    t.index ["poop_id"], name: "index_cares_on_poop_id"
    t.index ["walk_id"], name: "index_cares_on_walk_id"
  end

  create_table "cares_dogs", force: :cascade do |t|
    t.bigint "dog_id", null: false
    t.bigint "care_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["care_id"], name: "index_cares_dogs_on_care_id"
    t.index ["dog_id"], name: "index_cares_dogs_on_dog_id"
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
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "phone_number"
  end

  create_table "illnesses", force: :cascade do |t|
    t.bigint "dog_id", null: false
    t.string "name"
    t.string "description"
    t.date "start_date"
    t.date "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dog_id"], name: "index_illnesses_on_dog_id"
  end

  create_table "meals", force: :cascade do |t|
    t.string "category"
    t.integer "quantity"
    t.time "time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "medications", force: :cascade do |t|
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "poops", force: :cascade do |t|
    t.string "category"
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

  create_table "walks", force: :cascade do |t|
    t.string "category"
    t.integer "distance"
    t.integer "length"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "appointments", "dogs"
  add_foreign_key "appointments", "establishments"
  add_foreign_key "cares", "basics"
  add_foreign_key "cares", "meals"
  add_foreign_key "cares", "medications"
  add_foreign_key "cares", "poops"
  add_foreign_key "cares", "walks"
  add_foreign_key "cares_dogs", "cares"
  add_foreign_key "cares_dogs", "dogs"
  add_foreign_key "documents", "dogs"
  add_foreign_key "illnesses", "dogs"
end
