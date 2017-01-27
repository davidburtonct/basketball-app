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

ActiveRecord::Schema.define(version: 20170104004831) do

  create_table "skills", force: :cascade do |t|
    t.string  "name"
    t.integer "level_of_difficulty"
  end

  create_table "stats", force: :cascade do |t|
    t.string  "name"
    t.integer "skill_id"
  end

  create_table "user_stats", force: :cascade do |t|
    t.integer  "stat_value"
    t.integer  "stat_id"
    t.integer  "user_id"
    t.string   "date"
    t.datetime "created_at"
    t.integer  "skill_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password"
    t.string "birthday"
  end

end
