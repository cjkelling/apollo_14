ActiveRecord::Schema.define(version: 20180904152506) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "astronaut_missions", force: :cascade do |t|
    t.bigint "astronaut_id"
    t.bigint "mission_id"
    t.index ["astronaut_id"], name: "index_astronaut_missions_on_astronaut_id"
    t.index ["mission_id"], name: "index_astronaut_missions_on_mission_id"
  end

  create_table "astronauts", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "job"
  end

  create_table "missions", force: :cascade do |t|
    t.string "title"
    t.integer "time_in_space"
  end

  add_foreign_key "astronaut_missions", "astronauts"
  add_foreign_key "astronaut_missions", "missions"
end
