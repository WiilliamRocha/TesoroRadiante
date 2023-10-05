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

ActiveRecord::Schema[7.0].define(version: 2023_10_04_132812) do
  create_table "categories", force: :cascade do |t|
    t.string "ring"
    t.string "necklace"
    t.string "earring"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string "firts_name"
    t.string "last_name"
    t.string "email"
    t.integer "phone"
    t.string "address"
    t.string "country"
    t.integer "number_oder_id_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["number_oder_id_id"], name: "index_clients_on_number_oder_id_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "amount"
    t.string "client"
    t.text "details"
    t.integer "date"
    t.integer "name_product_id_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name_product_id_id"], name: "index_orders_on_name_product_id_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "color"
    t.integer "size"
    t.integer "price"
    t.integer "amount"
    t.text "details"
    t.integer "category_id_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id_id"], name: "index_products_on_category_id_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "clients", "number_oder_ids"
  add_foreign_key "orders", "name_product_ids"
  add_foreign_key "products", "category_ids"
end
