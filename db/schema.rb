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

ActiveRecord::Schema.define(version: 20160413204951) do

  create_table "cohorts", force: :cascade do |t|
    t.string   "season"
    t.integer  "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "category"
    t.string   "info"
    t.integer  "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.string   "company"
    t.string   "title"
    t.string   "start_month"
    t.integer  "start_year"
    t.string   "end_month"
    t.integer  "end_year"
    t.string   "responsibilities"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "student_id"
  end

  create_table "programs", force: :cascade do |t|
    t.string   "course"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "cohort_id"
  end

  create_table "students", force: :cascade do |t|
    t.string   "first_name"
    t.string   "course"
    t.string   "cohort"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "last_name"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.integer  "program_id"
  end

end
