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

ActiveRecord::Schema[7.0].define(version: 2024_10_09_150915) do
  create_table "categories", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
    t.text "content"
    t.integer "quantity"
    t.decimal "price", precision: 10, scale: 2
    t.boolean "available"
    t.datetime "released_at"
    t.decimal "discount", precision: 5, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
    t.bigint "category_id", null: false
    t.index ["category_id"], name: "index_products_on_category_id"
  end

  create_table "searches", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
    t.integer "quantity_min"
    t.integer "quantity_max"
    t.decimal "price_min", precision: 10
    t.decimal "price_max", precision: 10
    t.boolean "available"
    t.date "released_at_start"
    t.date "released_at_end"
    t.date "expired_date_start"
    t.date "expired_date_end"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "products", "categories"
end
