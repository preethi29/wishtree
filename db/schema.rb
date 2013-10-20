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

ActiveRecord::Schema.define(version: 20131020065028) do

  create_table "contributions", force: true do |t|
    t.decimal  "contributed_qty", precision: 10, scale: 0
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "wish_id"
    t.integer  "user_id"
  end

  add_index "contributions", ["user_id"], name: "contributions_user_id_fk", using: :btree
  add_index "contributions", ["wish_id"], name: "contributions_wish_id_fk", using: :btree

  create_table "help_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "needies", force: true do |t|
    t.string   "name"
    t.integer  "age"
    t.string   "country"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "purposes", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "contact_no"
    t.string   "role"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "wishes", force: true do |t|
    t.date     "due_date"
    t.string   "wish_item"
    t.decimal  "percent_fullfilled", precision: 5,  scale: 2
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "needy_id"
    t.integer  "purpose_id"
    t.integer  "help_type_id"
    t.decimal  "quantity",           precision: 10, scale: 0
  end

  add_index "wishes", ["help_type_id"], name: "wishes_help_type_id_fk", using: :btree
  add_index "wishes", ["needy_id"], name: "wishes_needy_id_fk", using: :btree
  add_index "wishes", ["purpose_id"], name: "wishes_purpose_id_fk", using: :btree
  add_index "wishes", ["user_id"], name: "wishes_user_id_fk", using: :btree

  add_foreign_key "contributions", "users", name: "contributions_user_id_fk"
  add_foreign_key "contributions", "wishes", name: "contributions_wish_id_fk"

  add_foreign_key "wishes", "help_types", name: "wishes_help_type_id_fk"
  add_foreign_key "wishes", "needies", name: "wishes_needy_id_fk"
  add_foreign_key "wishes", "purposes", name: "wishes_purpose_id_fk"
  add_foreign_key "wishes", "users", name: "wishes_user_id_fk"

end
