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

ActiveRecord::Schema.define(version: 2020_11_09_184702) do

  create_table "carts", force: :cascade do |t|
    t.decimal "total"
    t.decimal "balance"
    t.integer "itemtotal"
    t.integer "customer_id"
    t.integer "product_id"
    t.integer "service_id"
    t.decimal "pst"
    t.decimal "gst"
    t.decimal "hst"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "fname"
    t.string "lname"
    t.string "addr"
    t.string "city"
    t.string "prov"
    t.string "postal"
    t.string "login"
    t.string "pass"
    t.string "staff_id"
    t.date "apptdate"
    t.string "healthid"
    t.integer "cart_id"
    t.string "phone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.decimal "price"
    t.boolean "discount"
    t.decimal "discount_amount"
    t.integer "stock"
    t.integer "cart_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "provinces", force: :cascade do |t|
    t.string "name"
    t.integer "code"
    t.decimal "pst"
    t.decimal "gst"
    t.decimal "hst"
    t.integer "cart_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "services", force: :cascade do |t|
    t.string "name"
    t.decimal "price"
    t.boolean "discount"
    t.decimal "discount_amount"
    t.decimal "length"
    t.integer "cart_id"
    t.integer "staff_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "staffs", force: :cascade do |t|
    t.string "title"
    t.date "apptdate"
    t.decimal "rate"
    t.string "fname"
    t.string "lname"
    t.string "address"
    t.string "city"
    t.string "postal"
    t.string "phone"
    t.integer "service_id"
    t.integer "customer_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
