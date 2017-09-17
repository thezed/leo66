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

ActiveRecord::Schema.define(version: 20170917163225) do

  create_table "awards", force: :cascade do |t|
    t.string "artikul"
    t.integer "price"
    t.integer "pricefigure"
    t.string "size"
    t.string "format"
    t.string "quantity"
    t.string "additional"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.string "name"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.string "permalink"
    t.text "text"
    t.integer "parent_id"
    t.integer "lft", null: false
    t.integer "rgt", null: false
    t.integer "depth", default: 0, null: false
    t.integer "children_count", default: 0, null: false
    t.string "absolute_permalink"
    t.index ["lft"], name: "index_categories_on_lft"
    t.index ["parent_id"], name: "index_categories_on_parent_id"
    t.index ["rgt"], name: "index_categories_on_rgt"
  end

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string "data_file_name", null: false
    t.string "data_content_type"
    t.integer "data_file_size"
    t.integer "assetable_id"
    t.string "assetable_type", limit: 30
    t.string "type", limit: 30
    t.integer "width"
    t.integer "height"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["assetable_type", "assetable_id"], name: "idx_ckeditor_assetable"
    t.index ["assetable_type", "type", "assetable_id"], name: "idx_ckeditor_assetable_type"
  end

  create_table "expos", force: :cascade do |t|
    t.string "artikul"
    t.integer "price"
    t.integer "pricefigure"
    t.string "size"
    t.string "format"
    t.string "quantity"
    t.string "additional"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.string "name"
  end

  create_table "lights", force: :cascade do |t|
    t.string "artikul"
    t.string "name"
    t.integer "price"
    t.string "size"
    t.string "format"
    t.string "quantity"
    t.string "additional"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "orders", force: :cascade do |t|
    t.string "artikul"
    t.string "name"
    t.string "phone"
    t.string "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "name_com"
    t.string "city"
  end

  create_table "pages", force: :cascade do |t|
    t.string "title"
    t.text "text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "polygraphies", force: :cascade do |t|
    t.string "artikul"
    t.integer "price"
    t.integer "pricefigure"
    t.string "size"
    t.string "format"
    t.string "quantity"
    t.string "additional"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.string "name"
  end

  create_table "prices", force: :cascade do |t|
    t.string "name"
    t.integer "order"
    t.text "text"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "pricefile_file_name"
    t.string "pricefile_content_type"
    t.integer "pricefile_file_size"
    t.datetime "pricefile_updated_at"
  end

  create_table "printplacards", force: :cascade do |t|
    t.string "artikul"
    t.integer "price"
    t.integer "pricefigure"
    t.string "size"
    t.string "format"
    t.string "quantity"
    t.string "additional"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.string "name"
  end

  create_table "printposters", force: :cascade do |t|
    t.string "artikul"
    t.integer "price"
    t.integer "pricefigure"
    t.string "size"
    t.string "format"
    t.string "quantity"
    t.string "additional"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.string "name"
  end

  create_table "printwallpapers", force: :cascade do |t|
    t.string "artikul"
    t.integer "price"
    t.integer "pricefigure"
    t.string "size"
    t.string "format"
    t.string "quantity"
    t.string "additional"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.string "name"
  end

  create_table "souvenirs", force: :cascade do |t|
    t.string "artikul"
    t.integer "price"
    t.integer "pricefigure"
    t.string "size"
    t.string "format"
    t.string "quantity"
    t.string "additional"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.string "name"
  end

  create_table "standadditionals", force: :cascade do |t|
    t.string "artikul"
    t.integer "price"
    t.integer "pricefigure"
    t.string "size"
    t.string "format"
    t.string "quantity"
    t.string "additional"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.string "name"
  end

  create_table "standchils", force: :cascade do |t|
    t.string "artikul"
    t.integer "price"
    t.integer "pricefigure"
    t.string "size"
    t.string "format"
    t.string "quantity"
    t.string "additional"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.string "name"
  end

  create_table "standdous", force: :cascade do |t|
    t.string "artikul"
    t.integer "price"
    t.integer "pricefigure"
    t.string "size"
    t.string "format"
    t.string "quantity"
    t.string "additional"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.string "name"
  end

  create_table "standlagers", force: :cascade do |t|
    t.string "artikul"
    t.integer "price"
    t.integer "pricefigure"
    t.string "size"
    t.string "format"
    t.string "quantity"
    t.string "additional"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.string "name"
  end

  create_table "standpreds", force: :cascade do |t|
    t.string "artikul"
    t.integer "price"
    t.integer "pricefigure"
    t.string "size"
    t.string "format"
    t.string "quantity"
    t.string "additional"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.string "name"
  end

  create_table "standprofs", force: :cascade do |t|
    t.string "artikul"
    t.integer "price"
    t.integer "pricefigure"
    t.string "size"
    t.string "format"
    t.string "quantity"
    t.string "additional"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.string "name"
  end

  create_table "stands", force: :cascade do |t|
    t.string "name"
    t.string "artikul"
    t.integer "price"
    t.integer "pricefigure"
    t.string "size"
    t.string "format"
    t.string "quantity"
    t.string "additional"
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.integer "category_id"
    t.integer "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_stands_on_category_id"
  end

  create_table "standsafeties", force: :cascade do |t|
    t.string "artikul"
    t.integer "price"
    t.integer "pricefigure"
    t.string "size"
    t.string "format"
    t.string "quantity"
    t.string "additional"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.string "name"
  end

  create_table "standschools", force: :cascade do |t|
    t.string "artikul"
    t.integer "price"
    t.integer "pricefigure"
    t.string "size"
    t.string "format"
    t.string "quantity"
    t.string "additional"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.string "name"
  end

  create_table "standstickers", force: :cascade do |t|
    t.string "artikul"
    t.integer "price"
    t.integer "pricefigure"
    t.string "size"
    t.string "format"
    t.string "quantity"
    t.string "additional"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.string "name"
  end

  create_table "standthematics", force: :cascade do |t|
    t.string "artikul"
    t.integer "price"
    t.integer "pricefigure"
    t.string "size"
    t.string "format"
    t.string "quantity"
    t.string "additional"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.string "name"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
