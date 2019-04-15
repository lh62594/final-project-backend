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

ActiveRecord::Schema.define(version: 2019_04_15_194839) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dashboards", force: :cascade do |t|
    t.integer "user_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "newsfeed"
  end

  create_table "equities", force: :cascade do |t|
    t.string "symbol"
    t.string "company_name"
    t.string "exchange"
    t.string "industry"
    t.string "website"
    t.string "description"
    t.string "ceo"
    t.string "sector"
    t.string "tags"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "equity_dashboards", force: :cascade do |t|
    t.integer "dashboard_id"
    t.integer "equity_id"
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "portfolios", force: :cascade do |t|
    t.string "name"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "account_balance"
  end

  create_table "portfoliostats", force: :cascade do |t|
    t.integer "portfolio_id"
    t.date "date"
    t.decimal "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stats", force: :cascade do |t|
    t.integer "subportfolio_id"
    t.date "date"
    t.decimal "price"
    t.integer "quantity"
    t.decimal "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subportfolios", force: :cascade do |t|
    t.integer "portfolio_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "equity_id"
    t.string "category"
    t.decimal "initial_px"
    t.date "date_bought"
    t.date "date_sold"
    t.integer "quantity"
    t.decimal "end_px"
    t.decimal "initial_value"
    t.decimal "end_value"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
