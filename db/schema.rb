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

ActiveRecord::Schema.define(version: 20160415154409) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "requirements", force: :cascade do |t|
    t.string   "name"
    t.string   "page"
    t.string   "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "test_case_requirements", force: :cascade do |t|
    t.integer  "test_case_id"
    t.integer  "requirement_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "test_case_requirements", ["requirement_id"], name: "index_test_case_requirements_on_requirement_id", using: :btree
  add_index "test_case_requirements", ["test_case_id"], name: "index_test_case_requirements_on_test_case_id", using: :btree

  create_table "test_case_step_results", force: :cascade do |t|
    t.integer  "test_case_step_id"
    t.string   "state"
    t.text     "details"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "test_case_step_results", ["test_case_step_id"], name: "index_test_case_step_results_on_test_case_step_id", using: :btree

  create_table "test_case_steps", force: :cascade do |t|
    t.integer  "test_case_id"
    t.text     "description"
    t.integer  "position"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.text     "expected_result"
  end

  add_index "test_case_steps", ["test_case_id"], name: "index_test_case_steps_on_test_case_id", using: :btree

  create_table "test_cases", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "status"
  end

  add_foreign_key "test_case_requirements", "requirements"
  add_foreign_key "test_case_requirements", "test_cases"
  add_foreign_key "test_case_step_results", "test_case_steps"
  add_foreign_key "test_case_steps", "test_cases"
end
