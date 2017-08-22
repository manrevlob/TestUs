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

ActiveRecord::Schema.define(version: 20170821174738) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assigns", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.integer  "project_id"
    t.index ["project_id"], name: "index_assigns_on_project_id", using: :btree
    t.index ["user_id"], name: "index_assigns_on_user_id", using: :btree
  end

  create_table "builds", force: :cascade do |t|
    t.boolean  "active"
    t.boolean  "isOpen"
    t.string   "name"
    t.text     "description"
    t.datetime "releaseDate"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "project_id"
    t.index ["project_id"], name: "index_builds_on_project_id", using: :btree
  end

  create_table "case_plans", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "case_id"
    t.integer  "plan_id"
    t.integer  "user_id"
    t.index ["case_id"], name: "index_case_plans_on_case_id", using: :btree
    t.index ["plan_id"], name: "index_case_plans_on_plan_id", using: :btree
    t.index ["user_id"], name: "index_case_plans_on_user_id", using: :btree
  end

  create_table "cases", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "suite_id"
    t.text     "precondition"
    t.text     "timeEstimated"
    t.index ["suite_id"], name: "index_cases_on_suite_id", using: :btree
  end

  create_table "executes", force: :cascade do |t|
    t.string   "summary"
    t.date     "date"
    t.boolean  "result"
    t.decimal  "duration",   precision: 10, scale: 2
    t.string   "status"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  create_table "keywords", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "manages", force: :cascade do |t|
    t.boolean  "canCreate"
    t.boolean  "canRead"
    t.boolean  "canUpdate"
    t.boolean  "canDelete"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "role_id"
    t.integer  "zone_id"
    t.index ["role_id"], name: "index_manages_on_role_id", using: :btree
    t.index ["zone_id"], name: "index_manages_on_zone_id", using: :btree
  end

  create_table "message_folders", force: :cascade do |t|
    t.string   "name"
    t.boolean  "system"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.index ["user_id"], name: "index_message_folders_on_user_id", using: :btree
  end

  create_table "messages", force: :cascade do |t|
    t.string   "subjet"
    t.text     "body"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "sender_id"
    t.integer  "recipient_id"
    t.index ["recipient_id"], name: "index_messages_on_recipient_id", using: :btree
    t.index ["sender_id"], name: "index_messages_on_sender_id", using: :btree
  end

  create_table "plans", force: :cascade do |t|
    t.boolean  "active"
    t.boolean  "public"
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "build_id"
    t.index ["build_id"], name: "index_plans_on_build_id", using: :btree
  end

  create_table "platforms", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.boolean  "active"
    t.boolean  "public"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "steps", force: :cascade do |t|
    t.string   "action"
    t.string   "expectedResult"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "case_id"
    t.index ["case_id"], name: "index_steps_on_case_id", using: :btree
  end

  create_table "suites", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.boolean  "active"
    t.string   "name"
    t.string   "surname"
    t.string   "username"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "role_id"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
    t.index ["role_id"], name: "index_users_on_role_id", using: :btree
    t.index ["username"], name: "index_users_on_username", unique: true, using: :btree
  end

  create_table "zones", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "assigns", "projects"
  add_foreign_key "assigns", "users"
  add_foreign_key "builds", "projects"
  add_foreign_key "case_plans", "cases"
  add_foreign_key "case_plans", "plans"
  add_foreign_key "case_plans", "users"
  add_foreign_key "cases", "suites"
  add_foreign_key "manages", "roles"
  add_foreign_key "manages", "zones"
  add_foreign_key "message_folders", "users"
  add_foreign_key "plans", "builds"
  add_foreign_key "steps", "cases"
  add_foreign_key "users", "roles"
end
