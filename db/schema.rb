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

ActiveRecord::Schema.define(version: 20160622134606) do

  create_table "projects", force: :cascade do |t|
    t.string   "name",           limit: 255
    t.text     "description",    limit: 65535
    t.date     "start_date"
    t.string   "project_status", limit: 255
    t.date     "end_date"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.integer  "user_id",     limit: 4
    t.integer  "project_id",  limit: 4
    t.date     "date"
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "tasks", ["project_id"], name: "fk_rails_02e851e3b7", using: :btree
  add_index "tasks", ["user_id"], name: "fk_rails_4d2a9e4d7e", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "first_name", limit: 255
    t.string   "last_name",  limit: 255
    t.string   "category",   limit: 255
    t.string   "user_name",  limit: 255
    t.string   "email",      limit: 255
    t.string   "password",   limit: 255
    t.string   "company",    limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "users_projects", force: :cascade do |t|
    t.integer "user_id",    limit: 4
    t.integer "project_id", limit: 4
  end

  add_index "users_projects", ["project_id"], name: "fk_rails_45dda264fd", using: :btree
  add_index "users_projects", ["user_id"], name: "fk_rails_8ed741bcea", using: :btree

  create_table "working_times", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.integer  "project_id", limit: 4
    t.time     "start_time"
    t.time     "end_time"
    t.integer  "day",        limit: 4
    t.string   "month",      limit: 255
    t.string   "year",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "working_times", ["project_id"], name: "fk_rails_c4b1b971f5", using: :btree
  add_index "working_times", ["user_id"], name: "fk_rails_7d09163123", using: :btree

  add_foreign_key "tasks", "projects"
  add_foreign_key "tasks", "users"
  add_foreign_key "users_projects", "projects"
  add_foreign_key "users_projects", "users"
  add_foreign_key "working_times", "projects"
  add_foreign_key "working_times", "users"
end
