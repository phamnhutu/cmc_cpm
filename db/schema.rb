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

ActiveRecord::Schema.define(version: 20150625023701) do

  create_table "cpm_comments", force: :cascade do |t|
    t.integer  "cpm_user_id",    limit: 4
    t.integer  "cpm_issue_id",   limit: 4
    t.integer  "cpm_task_id",    limit: 4
    t.integer  "cpm_project_id", limit: 4
    t.string   "content",        limit: 255
    t.string   "attachments",    limit: 255
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "cpm_files", force: :cascade do |t|
    t.integer  "cpm_user_id",    limit: 4
    t.integer  "cpm_task_id",    limit: 4
    t.integer  "cpm_issue_id",   limit: 4
    t.integer  "cpm_comment_id", limit: 4
    t.string   "file_path",      limit: 255
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "cpm_histories", force: :cascade do |t|
    t.integer  "cpm_user_id",    limit: 4
    t.string   "name",           limit: 255
    t.integer  "cpm_project_id", limit: 4
    t.integer  "cpm_task_id",    limit: 4
    t.integer  "cpm_issue_id",   limit: 4
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "cpm_issues", force: :cascade do |t|
    t.integer  "cpm_user_id",     limit: 4
    t.integer  "cpm_project_id",  limit: 4
    t.integer  "man_hour",        limit: 4
    t.string   "name",            limit: 255
    t.integer  "assigned_to",     limit: 4
    t.string   "cpm_type",        limit: 255
    t.string   "cpm_status",      limit: 255
    t.integer  "cpm_process_id",  limit: 4
    t.integer  "cpm_priority_id", limit: 4
    t.datetime "deadline"
    t.text     "description",     limit: 65535
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "cpm_priorities", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "color",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "cpm_processes", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "cpm_projects", force: :cascade do |t|
    t.integer  "cpm_user_id", limit: 4
    t.string   "name",        limit: 255
    t.datetime "start_date"
    t.datetime "end_date"
    t.integer  "status",      limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "cpm_projects_users", id: false, force: :cascade do |t|
    t.integer "cpm_project_id", limit: 4, null: false
    t.integer "cpm_user_id",    limit: 4, null: false
  end

  create_table "cpm_tasks", force: :cascade do |t|
    t.integer  "cpm_user_id",     limit: 4
    t.integer  "cpm_project_id",  limit: 4
    t.string   "name",            limit: 255
    t.integer  "assigned_to",     limit: 4
    t.datetime "deadline"
    t.integer  "cpm_process_id",  limit: 4
    t.integer  "cpm_priority_id", limit: 4
    t.string   "man_hour",        limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "cpm_teams", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "status",     limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "cpm_users", force: :cascade do |t|
    t.string   "first_name",        limit: 255
    t.string   "last_name",         limit: 255
    t.string   "permit",            limit: 255
    t.string   "username",          limit: 255
    t.string   "email",             limit: 255
    t.string   "pasword_digest",    limit: 255
    t.string   "remember_digest",   limit: 255
    t.string   "activation_digest", limit: 255
    t.integer  "gender",            limit: 4
    t.string   "phone_number",      limit: 255
    t.string   "address",           limit: 255
    t.string   "facebook_url",      limit: 255
    t.string   "your_story",        limit: 255
    t.integer  "status",            limit: 4
    t.integer  "cpm_team_id",       limit: 4
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

end
