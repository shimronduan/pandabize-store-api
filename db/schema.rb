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

ActiveRecord::Schema.define(version: 2021_03_01_015359) do

  create_table "bicycles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "customizations", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "order_id", null: false
    t.integer "option_id", null: false
    t.index ["option_id"], name: "index_customizations_on_option_id"
    t.index ["order_id"], name: "index_customizations_on_order_id"
  end

  create_table "items", force: :cascade do |t|
    t.string "Name"
    t.integer "bicycle_id", null: false
    t.index ["bicycle_id"], name: "index_items_on_bicycle_id"
  end

  create_table "options", force: :cascade do |t|
    t.string "Name"
    t.integer "item_id", null: false
    t.index ["item_id"], name: "index_options_on_item_id"
  end

  create_table "orders", force: :cascade do |t|
    t.string "customer"
    t.integer "bicycle_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["bicycle_id"], name: "index_orders_on_bicycle_id"
  end

  add_foreign_key "customizations", "options"
  add_foreign_key "customizations", "orders"
  add_foreign_key "items", "bicycles"
  add_foreign_key "options", "items"
end
