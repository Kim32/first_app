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

ActiveRecord::Schema.define(version: 20160114024311) do

  create_table "attached_files", force: :cascade do |t|
    t.string "name"
    t.binary "data"
  end

  create_table "events", force: :cascade do |t|
    t.string   "title"
    t.datetime "start"
    t.datetime "end"
    t.string   "color"
    t.boolean  "allDay"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "category",   default: 0
  end

  create_table "messages", force: :cascade do |t|
    t.text     "content"
    t.integer  "division_cd"
    t.integer  "attached_file_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "staffs", force: :cascade do |t|
    t.string "name"
    t.string "kana"
  end

end
