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

ActiveRecord::Schema.define(version: 20150601224632) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "medicare_payments", force: :cascade do |t|
    t.string   "npi"
    t.string   "provider_last_org_name"
    t.string   "provider_first_name"
    t.string   "provider_mi"
    t.string   "provider_credentials"
    t.string   "provider_gender"
    t.string   "entity_code"
    t.string   "provider_street1"
    t.string   "provider_street2"
    t.string   "provider_city"
    t.string   "provider_zip"
    t.string   "provider_state"
    t.string   "provider_country"
    t.string   "provider_type"
    t.string   "medicare_participation_indicator"
    t.string   "place_of_service"
    t.string   "hcpcs_code"
    t.string   "hcpcs_description"
    t.string   "hcpcs_drug_indicator"
    t.integer  "line_srvc_cnt"
    t.integer  "bene_unique_cnt"
    t.integer  "bene_day_srvc_cnt"
    t.integer  "average_medicare_allowed_amt"
    t.integer  "stdev_medicare_allowed_amt"
    t.integer  "average_submitted_chrg_amt"
    t.integer  "stdev_submitted_chrg_amt"
    t.integer  "average_medicare_payment_amt"
    t.integer  "stdev_medicare_payment_amt"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

end
