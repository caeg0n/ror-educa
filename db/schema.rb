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

ActiveRecord::Schema[7.0].define(version: 2023_03_01_013513) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "course_teacher_school_infos", force: :cascade do |t|
    t.bigint "course_id", null: false
    t.bigint "teacher_school_info_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_course_teacher_school_infos_on_course_id"
    t.index ["teacher_school_info_id"], name: "index_course_teacher_school_infos_on_teacher_school_info_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "localities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "modalities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schools", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.bigint "locality_id", null: false
    t.bigint "modality_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["locality_id"], name: "index_schools_on_locality_id"
    t.index ["modality_id"], name: "index_schools_on_modality_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.date "birth"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teacher_infos", force: :cascade do |t|
    t.string "name"
    t.string "mail"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teacher_school_infos", force: :cascade do |t|
    t.bigint "school_id", null: false
    t.bigint "teacher_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["school_id"], name: "index_teacher_school_infos_on_school_id"
    t.index ["teacher_id"], name: "index_teacher_school_infos_on_teacher_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.string "name"
    t.string "mail"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "course_teacher_school_infos", "courses"
  add_foreign_key "course_teacher_school_infos", "teacher_school_infos"
  add_foreign_key "schools", "localities"
  add_foreign_key "schools", "modalities"
  add_foreign_key "teacher_school_infos", "schools"
  add_foreign_key "teacher_school_infos", "teachers"
end
