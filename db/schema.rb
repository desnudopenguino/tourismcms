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

ActiveRecord::Schema.define(:version => 20130824054723) do

  create_table "arcones", :force => true do |t|
    t.integer  "attraction_tour_id"
    t.float    "start"
    t.float    "end"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "armedia", :force => true do |t|
    t.integer  "medium_id"
    t.float    "arcone_start"
    t.float    "arcone_end"
    t.string   "sound_track"
    t.string   "rgb"
    t.string   "alpha"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "assets", :force => true do |t|
    t.integer "venue_id"
    t.string  "assetType"
    t.string  "location"
  end

  create_table "attraction_tours", :force => true do |t|
    t.integer "attraction_id"
    t.integer "tour_id"
    t.float   "radius"
    t.string  "description"
    t.integer "tour_order"
  end

  create_table "attractions", :force => true do |t|
    t.integer "venue_id"
    t.float   "latitude"
    t.float   "longitude"
    t.string  "title"
    t.string  "description"
  end

  create_table "media", :force => true do |t|
    t.string  "media_type"
    t.string  "content"
    t.integer "multimedia_id"
    t.string  "multimedia_type"
    t.integer "order"
  end

  create_table "messages", :force => true do |t|
    t.integer  "attraction_tour_id"
    t.integer  "order"
    t.string   "content"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "progresses", :force => true do |t|
    t.string "level"
  end

  create_table "time_visitors", :force => true do |t|
    t.integer  "tour_visitor_id"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "tour_visitors", :force => true do |t|
    t.integer  "venue_visitor_id"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
    t.integer  "tour_id",          :default => 0
    t.integer  "progress",         :default => 0
  end

  create_table "tours", :force => true do |t|
    t.string  "title"
    t.string  "description"
    t.integer "venue_id"
    t.boolean "active",      :default => false
  end

  create_table "venue_visitors", :force => true do |t|
    t.integer  "venue_id"
    t.integer  "visitor_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "venues", :force => true do |t|
    t.string "name"
    t.string "description"
  end

  create_table "visitors", :force => true do |t|
    t.string "oid"
  end

end
