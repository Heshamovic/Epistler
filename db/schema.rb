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

ActiveRecord::Schema.define(version: 20220111225458) do

  create_table "groups", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3" do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_groups_on_user_id", using: :btree
  end

  create_table "recipients", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3" do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_recipients_on_user_id", using: :btree
  end

  create_table "recipients_lists", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3" do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_recipients_lists_on_user_id", using: :btree
  end

  create_table "recipients_recipients_lists", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3" do |t|
    t.integer "recipients_id"
    t.integer "recipients_lists_id"
    t.integer "listing_type",        default: 1, null: false
    t.index ["recipients_id"], name: "index_recipients_recipients_lists_on_recipients_id", using: :btree
    t.index ["recipients_lists_id"], name: "index_recipients_recipients_lists_on_recipients_lists_id", using: :btree
  end

  create_table "templates", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3" do |t|
    t.string   "name"
    t.text     "description", limit: 65535
    t.integer  "user_id"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.index ["user_id"], name: "index_templates_on_user_id", using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3" do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.string   "surname"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "groups", "users"
  add_foreign_key "recipients", "users"
  add_foreign_key "recipients_lists", "users"
  add_foreign_key "recipients_recipients_lists", "recipients", column: "recipients_id"
  add_foreign_key "recipients_recipients_lists", "recipients_lists", column: "recipients_lists_id"
  add_foreign_key "templates", "users"
end
