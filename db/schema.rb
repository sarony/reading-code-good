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

ActiveRecord::Schema.define(version: 20140427005329) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "code_bases", force: true do |t|
    t.string   "name"
    t.string   "link"
    t.integer  "language_id"
    t.integer  "loc_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "code_bases", ["language_id"], name: "index_code_bases_on_language_id", using: :btree
  add_index "code_bases", ["loc_id"], name: "index_code_bases_on_loc_id", using: :btree

  create_table "faqs", force: true do |t|
    t.text     "question"
    t.text     "answer"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "languages", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locs", force: true do |t|
    t.string   "range"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
