# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_03_30_211419) do

  create_table "campaigns", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.text "dialogue", default: "--- []\n"
    t.text "response", default: "--- []\n"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "character_items", force: :cascade do |t|
    t.integer "character_id"
    t.integer "item_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.integer "level", default: 1
    t.integer "damage", default: 1
    t.integer "strength"
    t.integer "dexterity"
    t.integer "constitution"
    t.integer "intelligence"
    t.integer "wisdom"
    t.integer "charisma"
    t.integer "armor_rating", default: 10
    t.integer "max_hp"
    t.integer "current_hp"
    t.integer "temporary_hp"
    t.integer "experience", default: 0
    t.integer "surprise", default: 0
    t.integer "initiative", default: 0
    t.integer "user_id"
    t.integer "campaign_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "dialogues", force: :cascade do |t|
    t.integer "campaign_id"
    t.string "sentence"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "encounters", force: :cascade do |t|
    t.integer "turn", default: 0
    t.integer "character_id"
    t.integer "enemy_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "enemies", force: :cascade do |t|
    t.string "name"
    t.integer "damage", default: 1
    t.integer "strength"
    t.integer "dexterity"
    t.integer "constitution"
    t.integer "intelligence"
    t.integer "wisdom"
    t.integer "charisma"
    t.integer "armor_rating"
    t.integer "challenge_rating", default: 0
    t.integer "max_hp"
    t.integer "current_hp"
    t.integer "experience_value", default: 3
    t.integer "initiative", default: 0
    t.integer "user_id"
    t.integer "campaign_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.string "cost"
    t.float "weight"
    t.integer "damage_dice", default: 0
    t.integer "roll", default: 1
    t.integer "armor", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
