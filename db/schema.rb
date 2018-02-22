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

ActiveRecord::Schema.define(version: 20180208221625) do

  create_table "games", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "winner_id"
    t.bigint "loser_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "confirmed"
    t.index ["loser_id"], name: "index_games_on_loser_id"
    t.index ["winner_id"], name: "index_games_on_winner_id"
  end

  create_table "players", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "provider", null: false
    t.string "uid", null: false
    t.string "name"
    t.string "nickname"
    t.string "first_name"
    t.string "last_name"
    t.string "location"
    t.string "image_url"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["provider", "uid"], name: "index_players_on_provider_and_uid", unique: true
    t.index ["provider"], name: "index_players_on_provider"
    t.index ["uid"], name: "index_players_on_uid"
  end

  create_table "players_teams", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "team_id", null: false
    t.bigint "player_id", null: false
    t.index ["player_id", "team_id"], name: "index_players_teams_on_player_id_and_team_id"
    t.index ["team_id", "player_id"], name: "index_players_teams_on_team_id_and_player_id"
  end

  create_table "teams", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
