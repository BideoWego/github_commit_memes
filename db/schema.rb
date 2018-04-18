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

ActiveRecord::Schema.define(version: 20180418001859) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "commits", force: :cascade do |t|
    t.string "q", null: false
    t.string "sha", null: false
    t.string "url", null: false
    t.text "message", null: false
    t.string "user", null: false
    t.string "user_url", null: false
    t.string "repo", null: false
    t.string "repo_url", null: false
    t.datetime "committed_at", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["committed_at"], name: "index_commits_on_committed_at"
    t.index ["message"], name: "index_commits_on_message"
    t.index ["q"], name: "index_commits_on_q"
    t.index ["repo"], name: "index_commits_on_repo"
    t.index ["repo_url"], name: "index_commits_on_repo_url"
    t.index ["sha"], name: "index_commits_on_sha"
    t.index ["url"], name: "index_commits_on_url"
    t.index ["user"], name: "index_commits_on_user"
    t.index ["user_url"], name: "index_commits_on_user_url"
  end

end
