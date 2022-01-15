# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_01_15_021925) do

  create_table "mypages", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "est_number", null: false
    t.string "issue_date", null: false
    t.string "exp_date", null: false
    t.string "destination", null: false
    t.string "title", null: false
    t.string "dl_date", null: false
    t.string "terms", null: false
    t.string "initial1", null: false
    t.integer "initial1_vol", null: false
    t.integer "initial1_price", null: false
    t.text "initial1_memo"
    t.string "initial2"
    t.integer "initial2_vol"
    t.integer "initial2_price"
    t.text "initial2_memo"
    t.string "initial3"
    t.integer "initial3_vol"
    t.integer "initial3_price"
    t.text "initial3_memo"
    t.string "run1", null: false
    t.integer "run1_vol", null: false
    t.integer "run1_price", null: false
    t.text "run1_memo"
    t.string "run2"
    t.integer "run2_vol"
    t.integer "run2_price"
    t.text "run2_memo"
    t.string "run3"
    t.integer "run3_vol"
    t.integer "run3_price"
    t.text "run3_memo"
    t.string "run4"
    t.integer "run4_vol"
    t.integer "run4_price"
    t.text "run4_memo"
    t.string "run5"
    t.integer "run5_vol"
    t.integer "run5_price"
    t.text "run5_memo"
    t.string "run6"
    t.integer "run6_vol"
    t.integer "run6_price"
    t.text "run6_memo"
    t.string "run7"
    t.integer "run7_vol"
    t.integer "run7_price"
    t.text "run7_memo"
    t.string "run8"
    t.integer "run8_vol"
    t.integer "run8_price"
    t.text "run8_memo"
    t.string "run9"
    t.integer "run9_vol"
    t.integer "run9_price"
    t.text "run9_memo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "user_name", null: false
    t.string "depart", null: false
    t.string "position", null: false
    t.string "phone", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
