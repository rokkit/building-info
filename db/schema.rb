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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130530134703) do

  create_table "anentrances", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "build_objects", :force => true do |t|
    t.integer  "type_object_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "countries", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "districts", :force => true do |t|
    t.string   "name"
    t.integer  "town_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "districts", ["town_id"], :name => "index_districts_on_town_id"

  create_table "exthouses", :force => true do |t|
    t.integer  "serviceorg_id"
    t.string   "name"
    t.date     "byear"
    t.boolean  "overhault"
    t.boolean  "elevator"
    t.boolean  "consierge"
    t.integer  "user_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "type_of_house_id"
    t.integer  "material_id"
    t.boolean  "chute"
    t.integer  "stair_id"
    t.boolean  "basement"
    t.float    "hfirstfloor"
    t.integer  "anentrance_id"
  end

  add_index "exthouses", ["serviceorg_id"], :name => "index_exthouses_on_serviceorg_id"
  add_index "exthouses", ["user_id"], :name => "index_exthouses_on_user_id"

  create_table "houses", :force => true do |t|
    t.integer  "street_id"
    t.integer  "metro_id"
    t.integer  "number"
    t.integer  "building"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "floor"
    t.integer  "count_rooms"
    t.float    "area"
    t.float    "living_area"
    t.float    "kitchen_area"
    t.float    "height"
    t.boolean  "balcon"
    t.integer  "exthouse_id"
  end

  add_index "houses", ["metro_id"], :name => "index_houses_on_metro_id"
  add_index "houses", ["street_id"], :name => "index_houses_on_street_id"

  create_table "materials", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "metros", :force => true do |t|
    t.string   "name"
    t.integer  "town_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "metros", ["town_id"], :name => "index_metros_on_town_id"

  create_table "overlaps", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "regions", :force => true do |t|
    t.string   "name"
    t.integer  "country_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "serviceorgs", :force => true do |t|
    t.string   "name"
    t.text     "adress"
    t.text     "description"
    t.string   "typeofservice"
    t.integer  "house_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "serviceorgs", ["house_id"], :name => "index_serviceorgs_on_house_id"

  create_table "stairs", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "streets", :force => true do |t|
    t.string   "name"
    t.integer  "district_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "streets", ["district_id"], :name => "index_streets_on_district_id"

  create_table "towns", :force => true do |t|
    t.string   "name"
    t.integer  "region_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "towns", ["region_id"], :name => "index_towns_on_region_id"

  create_table "type_houses", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "type_of_houses", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "fio"
    t.string   "phone"
    t.string   "name"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
