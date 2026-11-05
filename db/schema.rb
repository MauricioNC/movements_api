# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.1].define(version: 2026_10_30_044941) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "movements", force: :cascade do |t|
    t.string "movement_type"
    t.string "place_type"
    t.string "account_type"
    t.date "start_date"
    t.string "name"
    t.string "nationality"
    t.string "owner_place"
    t.string "constancy_folio"
    t.string "rfc"
    t.string "curp"
    t.string "gender"
    t.string "place_of_birth"
    t.string "marital_status"
    t.string "street_and_number"
    t.string "neigborhood"
    t.string "postal_code"
    t.string "city"
    t.string "state"
    t.string "movement_type_number"
    t.string "start_day"
    t.string "start_month"
    t.string "start_year"
    t.string "end_day"
    t.string "end_month"
    t.string "end_year"
    t.string "employee_type"
    t.string "ppm_folio"
    t.string "past_position"
    t.string "past_position_desc"
    t.string "past_budget_key"
    t.string "past_resp_center_key"
    t.string "past_resp_center_desc"
    t.string "current_position"
    t.string "current_position_desc"
    t.string "current_budget_key"
    t.string "current_resp_center_key"
    t.string "current_resp_center_desc"
    t.string "justification"
    t.boolean "needs_commission", default: false
    t.string "commissioned_to", default: "NA"
    t.string "proposed_by"
    t.string "made_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
end
