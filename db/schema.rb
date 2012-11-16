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

ActiveRecord::Schema.define(:version => 20121112142204) do

  create_table "accordions", :force => true do |t|
    t.string   "titolo"
    t.string   "indirizzo"
    t.string   "alt_text"
    t.string   "caption_text"
    t.string   "link"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "attachments", :force => true do |t|
    t.integer  "project_id"
    t.string   "indirizzo"
    t.string   "file"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "menus", :force => true do |t|
    t.string   "voce"
    t.integer  "priority"
    t.string   "language"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "link"
  end

  create_table "news", :force => true do |t|
    t.string   "titolo"
    t.string   "corpo"
    t.string   "breve"
    t.date     "pubblicazione"
    t.string   "autore"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "projects", :force => true do |t|
    t.string   "titolo"
    t.date     "data_lavori"
    t.string   "localita"
    t.string   "descrizione"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.string   "copertina"
    t.string   "copertina_thumbnail"
    t.string   "BigPicture"
    t.string   "descr_breve"
    t.string   "folder"
  end

end
