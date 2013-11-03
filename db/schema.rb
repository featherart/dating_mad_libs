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

ActiveRecord::Schema.define(:version => 20131103033708) do

  create_table "stories", :force => true do |t|
    t.string   "noun"
    t.string   "verb"
    t.string   "adjective"
    t.string   "second_adjective"
    t.string   "proper_noun"
    t.string   "second_noun"
    t.string   "third_noun"
    t.string   "verb_future_tense"
    t.string   "verb_past_tense"
    t.text     "story"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "templates", :force => true do |t|
    t.text     "sentence"
    t.integer  "nouns"
    t.integer  "verbs"
    t.integer  "proper_nouns"
    t.integer  "verb_past_tense"
    t.integer  "verb_future_tense"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.integer  "adjectives"
  end

end
