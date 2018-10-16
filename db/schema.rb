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

ActiveRecord::Schema.define(version: 2018_10_04_181213) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "campus_users", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "campus_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["campus_id"], name: "index_campus_users_on_campus_id"
    t.index ["user_id"], name: "index_campus_users_on_user_id"
  end

  create_table "campuses", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cohort_days", force: :cascade do |t|
    t.boolean "has_class"
    t.bigint "cohort_id"
    t.bigint "day_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cohort_id"], name: "index_cohort_days_on_cohort_id"
    t.index ["day_id"], name: "index_cohort_days_on_day_id"
  end

  create_table "cohorts", force: :cascade do |t|
    t.string "nickname"
    t.string "name"
    t.integer "time_offset"
    t.bigint "campus_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["campus_id"], name: "index_cohorts_on_campus_id"
  end

  create_table "days", force: :cascade do |t|
    t.datetime "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "student_days", force: :cascade do |t|
    t.string "status"
    t.datetime "time_in"
    t.bigint "student_id"
    t.bigint "day_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["day_id"], name: "index_student_days_on_day_id"
    t.index ["student_id"], name: "index_student_days_on_student_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.string "slack_id"
    t.string "image_url"
    t.bigint "cohort_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cohort_id"], name: "index_students_on_cohort_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "campus_users", "campuses"
  add_foreign_key "campus_users", "users"
  add_foreign_key "cohort_days", "cohorts"
  add_foreign_key "cohort_days", "days"
  add_foreign_key "cohorts", "campuses"
  add_foreign_key "student_days", "days"
  add_foreign_key "student_days", "students"
  add_foreign_key "students", "cohorts"
end
