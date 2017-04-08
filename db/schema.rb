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

ActiveRecord::Schema.define(version: 20170408212255) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "application_fees", force: :cascade do |t|
    t.string "price"
  end

  create_table "application_websites", force: :cascade do |t|
    t.string "website"
  end

  create_table "boat_ramps", force: :cascade do |t|
    t.string "name"
  end

  create_table "managing_agencies", force: :cascade do |t|
    t.string "name"
  end

  create_table "permit_costs", force: :cascade do |t|
    t.string "price"
  end

  create_table "permit_types", force: :cascade do |t|
    t.string "name"
  end

  create_table "rivers", force: :cascade do |t|
    t.string  "name"
    t.integer "length"
    t.date    "deadline"
    t.date    "drawing"
    t.integer "state_id"
    t.string  "take_out"
    t.string  "put_in"
    t.integer "managing_agency_id"
    t.integer "application_fee_id"
    t.integer "permit_cost_id"
    t.integer "application_website_id"
    t.integer "permit_type_id"
    t.index ["application_fee_id"], name: "index_rivers_on_application_fee_id", using: :btree
    t.index ["application_website_id"], name: "index_rivers_on_application_website_id", using: :btree
    t.index ["managing_agency_id"], name: "index_rivers_on_managing_agency_id", using: :btree
    t.index ["permit_cost_id"], name: "index_rivers_on_permit_cost_id", using: :btree
    t.index ["permit_type_id"], name: "index_rivers_on_permit_type_id", using: :btree
    t.index ["state_id"], name: "index_rivers_on_state_id", using: :btree
  end

  create_table "states", force: :cascade do |t|
    t.string "name"
  end

  add_foreign_key "rivers", "application_fees"
  add_foreign_key "rivers", "application_websites"
  add_foreign_key "rivers", "managing_agencies"
  add_foreign_key "rivers", "permit_costs"
  add_foreign_key "rivers", "permit_types"
  add_foreign_key "rivers", "states"
end
