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

ActiveRecord::Schema.define(version: 20170927222030) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "loops", force: :cascade do |t|
    t.integer "quantity"
    t.integer "problem_id"
    t.integer "l_current"
    t.integer "l_resistance"
    t.integer "l_voltage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "problems", force: :cascade do |t|
    t.integer "difficulty"
    t.string "category"
    t.integer "tot_voltage"
    t.integer "tot_resistance"
    t.integer "tot_current"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "resistors", force: :cascade do |t|
    t.integer "voltage"
    t.integer "current"
    t.integer "resistance"
    t.integer "loop_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teacher_problems", force: :cascade do |t|
    t.integer "teacher_id"
    t.integer "problem_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
