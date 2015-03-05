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

ActiveRecord::Schema.define(version: 20150305084100) do

  create_table "blogs", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "owner",       limit: 255
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "title",       limit: 255
  end

  create_table "comments", force: :cascade do |t|
    t.integer  "owner_id",     limit: 4
    t.string   "author",       limit: 255
    t.text     "content",      limit: 16777215
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.text     "content_html", limit: 16777215
    t.string   "owner_type",   limit: 255
  end

  add_index "comments", ["owner_id", "owner_type"], name: "index_comments_on_owner_id_and_owner_type", using: :btree
  add_index "comments", ["owner_id"], name: "index_comments_on_entry_id", using: :btree

  create_table "entries", force: :cascade do |t|
    t.string   "title",         limit: 255
    t.string   "author",        limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.text     "progress",      limit: 65535
    t.text     "plans",         limit: 65535
    t.text     "problems",      limit: 65535
    t.integer  "blog_id",       limit: 4
    t.text     "progress_html", limit: 65535
    t.text     "plans_html",    limit: 65535
    t.text     "problems_html", limit: 65535
  end

  add_index "entries", ["blog_id"], name: "fk_rails_56330946fe", using: :btree

  create_table "tags", force: :cascade do |t|
    t.string  "name",     limit: 255
    t.integer "entry_id", limit: 4
  end

  add_index "tags", ["entry_id"], name: "fk_rails_9407db3e92", using: :btree

  create_table "weekly_statuses", force: :cascade do |t|
    t.string   "author",      limit: 255
    t.text     "status",      limit: 65535
    t.text     "status_html", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_foreign_key "entries", "blogs", on_update: :cascade, on_delete: :cascade
  add_foreign_key "tags", "entries", on_update: :cascade, on_delete: :cascade
end
