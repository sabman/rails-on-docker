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

ActiveRecord::Schema.define(version: 20140624145910) do

  create_table "brands", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "time_to_brew", default: 10
    t.integer  "in_store",     default: 0
  end

  create_table "brew_logs", force: true do |t|
    t.integer  "brand_id"
    t.integer  "count"
    t.integer  "time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "brew_logs", ["brand_id"], name: "index_brew_logs_on_brand_id"

end
