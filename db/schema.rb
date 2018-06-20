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

ActiveRecord::Schema.define(version: 2018_06_20_211548) do

  create_table "crusts", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "last_name"
    t.string "email"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "deliveries", force: :cascade do |t|
    t.string "address_1"
    t.string "address_2"
    t.integer "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ingredients_recipes", id: false, force: :cascade do |t|
    t.integer "recipe_id", null: false
    t.integer "ingredient_id", null: false
    t.index ["recipe_id", "ingredient_id"], name: "index_ingredients_recipes_on_recipe_id_and_ingredient_id"
  end

  create_table "orders", force: :cascade do |t|
    t.string "payment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders_pizzas", id: false, force: :cascade do |t|
    t.integer "pizza_id", null: false
    t.integer "order_id", null: false
    t.index ["pizza_id", "order_id"], name: "index_orders_pizzas_on_pizza_id_and_order_id"
  end

  create_table "pizzas", force: :cascade do |t|
    t.integer "crust_id"
    t.integer "recipe_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["crust_id"], name: "index_pizzas_on_crust_id"
    t.index ["recipe_id"], name: "index_pizzas_on_recipe_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
  end

end
