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

ActiveRecord::Schema.define(:version => 20140228105233) do

  create_table "batting_lines", :force => true do |t|
    t.string   "playername"
    t.integer  "runs"
    t.integer  "sixes"
    t.integer  "fours"
    t.string   "status"
    t.integer  "total"
    t.integer  "team_id"
    t.integer  "player_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "batting_lines", ["player_id"], :name => "index_batting_lines_on_player_id"
  add_index "batting_lines", ["team_id"], :name => "index_batting_lines_on_team_id"

  create_table "bowling_lines", :force => true do |t|
    t.string   "bowlername"
    t.integer  "overs"
    t.integer  "noball"
    t.integer  "runs"
    t.integer  "wickets"
    t.integer  "wides"
    t.integer  "team_id"
    t.integer  "player_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "bowling_lines", ["player_id"], :name => "index_bowling_lines_on_player_id"
  add_index "bowling_lines", ["team_id"], :name => "index_bowling_lines_on_team_id"

  create_table "players", :force => true do |t|
    t.string   "playername"
    t.integer  "team_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "teams", :force => true do |t|
    t.string   "teamname"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
