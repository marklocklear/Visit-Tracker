# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110309175333) do

  create_table "authorization_periods", :force => true do |t|
    t.datetime "from_date"
    t.datetime "to_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "patients", :force => true do |t|
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.string   "phone"
    t.integer  "number_of_visits"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "contact"
  end

  create_table "sites", :force => true do |t|
    t.string   "site_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "therapists", :force => true do |t|
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "visits", :force => true do |t|
    t.datetime "visit_date"
    t.integer  "patient_id"
    t.integer  "therapist_id"
    t.string   "visit_notes"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "session_length"
    t.integer  "authorization_id"
    t.integer  "site_id"
  end

end
