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

ActiveRecord::Schema.define(version: 20170927212019) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "loops", force: :cascade do |t|
    t.integer "problem_id"
    t.decimal "l_current", precision: 8, scale: 2
    t.decimal "l_resistance", precision: 8, scale: 2
    t.decimal "l_voltage", precision: 8, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "problems", force: :cascade do |t|
    t.integer "difficulty"
    t.string "category"
    t.decimal "tot_voltage", precision: 8, scale: 2
    t.decimal "tot_resistance", precision: 8, scale: 2
    t.decimal "tot_current", precision: 8, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "resistors", force: :cascade do |t|
    t.decimal "voltage", precision: 8, scale: 2
    t.decimal "current", precision: 8, scale: 2
    t.decimal "resistance", precision: 8, scale: 2
    t.integer "loop_id"
    t.integer "num"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
