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

ActiveRecord::Schema.define(version: 2019_09_04_210322) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "city_equipments", force: :cascade do |t|
    t.string "com_insee"
    t.string "com_lib"
    t.string "nb_equipments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string "department"
    t.string "city"
    t.string "first_name"
    t.string "last_name"
    t.string "label_level"
    t.string "region"
    t.string "phone_number"
    t.string "email"
    t.string "list_current_year"
    t.string "post"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 50
    t.string "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
    t.index ["sluggable_type", "sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_type_and_sluggable_id"
  end

  create_table "info_equipments", force: :cascade do |t|
    t.float "lat"
    t.float "lng"
    t.string "activity"
    t.string "creation_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "address"
    t.string "equipment_type"
    t.integer "nb_equipments"
    t.string "level"
    t.string "environment"
    t.string "name"
    t.string "slug"
    t.string "city"
    t.index ["activity"], name: "index_info_equipments_on_activity"
    t.index ["slug"], name: "index_info_equipments_on_slug", unique: true
  end

  create_table "user_profils", force: :cascade do |t|
    t.string "gender"
    t.integer "age"
    t.string "size"
    t.integer "weight"
    t.string "sport_frequencies"
    t.string "sport_interests"
    t.string "home_address"
    t.string "work_address"
    t.boolean "confirmation_informations"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar"
    t.string "first_name"
    t.string "last_name"
    t.index ["user_id"], name: "index_user_profils_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "provider"
    t.string "uid"
    t.boolean "receive_content"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "user_profils", "users"
end
