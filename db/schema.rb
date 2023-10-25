
ActiveRecord::Schema[7.0].define(version: 2023_10_19_070630) do
  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.string "status"
    t.string "species"
    t.string "gender"
    t.string "origin"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "characters_episodes", id: false, force: :cascade do |t|
    t.integer "character_id", null: false
    t.integer "episode_id", null: false
  end

  create_table "episodes", force: :cascade do |t|
    t.string "title"
    t.date "air_date"
    t.text "episode_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "chars_in_ep_http"
  end

end
