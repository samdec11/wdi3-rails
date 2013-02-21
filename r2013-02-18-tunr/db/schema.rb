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

ActiveRecord::Schema.define(:version => 20130220213442) do

  create_table "albums", :force => true do |t|
    t.string   "name"
    t.text     "image"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "albums_users", :force => true do |t|
    t.integer "album_id"
    t.integer "user_id"
  end

  create_table "artists", :force => true do |t|
    t.string   "name"
    t.text     "image"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "genres", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "genres_songs", :force => true do |t|
    t.integer "genre_id"
    t.integer "song_id"
  end

  create_table "mixtapes", :force => true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "mixtapes_songs", :force => true do |t|
    t.integer "mixtape_id"
    t.integer "song_id"
  end

  create_table "songs", :force => true do |t|
    t.string   "name"
    t.text     "image"
    t.string   "filename"
    t.integer  "artist_id"
    t.integer  "album_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.text     "image"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.string   "password_digest"
    t.boolean  "is_admin",        :default => false
    t.decimal  "balance",         :default => 0.0
  end

end
