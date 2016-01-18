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

ActiveRecord::Schema.define(version: 20160113183544) do

  create_table "contacts", force: :cascade do |t|
    t.string   "First_Name"
    t.string   "Last_Name"
    t.string   "Full_Name"
    t.string   "Email"
    t.string   "Title"
    t.string   "Position"
    t.string   "Organization"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "contacts", ["Email"], name: "index_contacts_on_Email"
  add_index "contacts", ["Full_Name"], name: "index_contacts_on_Full_Name"

  create_table "logs", force: :cascade do |t|
    t.text     "comment"
    t.string   "responsible"
    t.integer  "contact_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "logs", ["contact_id"], name: "index_logs_on_contact_id"

end
