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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160323012409) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "awards", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "awards_competitions", force: :cascade do |t|
    t.integer  "competition_id"
    t.integer  "award_id"
    t.text     "blurb"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "awards_competitions", ["award_id"], name: "index_awards_competitions_on_award_id", using: :btree
  add_index "awards_competitions", ["competition_id"], name: "index_awards_competitions_on_competition_id", using: :btree

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories_posts", force: :cascade do |t|
    t.integer  "post_id"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "categories_posts", ["category_id"], name: "index_categories_posts_on_category_id", using: :btree
  add_index "categories_posts", ["post_id"], name: "index_categories_posts_on_post_id", using: :btree

  create_table "competitions", force: :cascade do |t|
    t.string   "name"
    t.date     "date"
    t.integer  "year_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "competitions", ["year_id"], name: "index_competitions_on_year_id", using: :btree

  create_table "content_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "document_links", force: :cascade do |t|
    t.integer  "document_id"
    t.text     "doc_link"
    t.string   "name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "document_links", ["document_id"], name: "index_document_links_on_document_id", using: :btree

  create_table "documents", force: :cascade do |t|
    t.string   "name"
    t.date     "date_published"
    t.text     "about"
    t.integer  "category_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "documents", ["category_id"], name: "index_documents_on_category_id", using: :btree

  create_table "documents_people", force: :cascade do |t|
    t.integer  "person_id"
    t.integer  "document_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "documents_people", ["document_id"], name: "index_documents_people_on_document_id", using: :btree
  add_index "documents_people", ["person_id"], name: "index_documents_people_on_person_id", using: :btree

  create_table "game_videos", force: :cascade do |t|
    t.integer  "game_id"
    t.string   "title"
    t.text     "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "game_videos", ["game_id"], name: "index_game_videos_on_game_id", using: :btree

  create_table "games", force: :cascade do |t|
    t.integer  "year_id"
    t.string   "name"
    t.text     "strategy"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "games", ["year_id"], name: "index_games_on_year_id", using: :btree

  create_table "people", force: :cascade do |t|
    t.string   "name"
    t.integer  "role_id"
    t.string   "image"
    t.integer  "year_start"
    t.integer  "year_end"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "people", ["role_id"], name: "index_people_on_role_id", using: :btree

  create_table "post_contents", force: :cascade do |t|
    t.integer  "post_id"
    t.integer  "content_type_id"
    t.text     "body"
    t.integer  "order"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "post_contents", ["content_type_id"], name: "index_post_contents_on_content_type_id", using: :btree
  add_index "post_contents", ["post_id"], name: "index_post_contents_on_post_id", using: :btree

  create_table "posts", force: :cascade do |t|
    t.integer  "year_id"
    t.date     "date_published"
    t.string   "title"
    t.boolean  "active"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "posts", ["year_id"], name: "index_posts_on_year_id", using: :btree

  create_table "robots", force: :cascade do |t|
    t.string   "name"
    t.text     "descripton"
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "social_media_links", force: :cascade do |t|
    t.string   "name"
    t.string   "icon"
    t.text     "media_url"
    t.integer  "order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sponsor_levels", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sponsor_years", force: :cascade do |t|
    t.integer  "sponsor_id"
    t.integer  "year_id"
    t.integer  "sponsor_level_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "sponsor_years", ["sponsor_id"], name: "index_sponsor_years_on_sponsor_id", using: :btree
  add_index "sponsor_years", ["sponsor_level_id"], name: "index_sponsor_years_on_sponsor_level_id", using: :btree
  add_index "sponsor_years", ["year_id"], name: "index_sponsor_years_on_year_id", using: :btree

  create_table "sponsors", force: :cascade do |t|
    t.string   "name"
    t.string   "logo_link"
    t.text     "sponsor_url"
    t.boolean  "active"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "years", force: :cascade do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "awards_competitions", "awards"
  add_foreign_key "awards_competitions", "competitions"
  add_foreign_key "categories_posts", "categories"
  add_foreign_key "categories_posts", "posts"
  add_foreign_key "competitions", "years"
  add_foreign_key "document_links", "documents"
  add_foreign_key "documents", "categories"
  add_foreign_key "documents_people", "documents"
  add_foreign_key "documents_people", "people"
  add_foreign_key "game_videos", "games"
  add_foreign_key "games", "years"
  add_foreign_key "people", "roles"
  add_foreign_key "post_contents", "content_types"
  add_foreign_key "post_contents", "posts"
  add_foreign_key "posts", "years"
  add_foreign_key "sponsor_years", "sponsor_levels"
  add_foreign_key "sponsor_years", "sponsors"
  add_foreign_key "sponsor_years", "years"
end
