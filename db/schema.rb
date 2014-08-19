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

ActiveRecord::Schema.define(version: 20140818030021) do

  create_table "curriculums", force: true do |t|
    t.string   "name"
    t.string   "slug"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "friendly_id_slugs", force: true do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id"
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type"

  create_table "objectives", force: true do |t|
    t.string   "name"
    t.integer  "number"
    t.string   "slug"
    t.integer  "subtopic_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "objectives", ["subtopic_id"], name: "index_objectives_on_subtopic_id"

  create_table "subjects", force: true do |t|
    t.string   "name"
    t.string   "slug"
    t.integer  "curriculum_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "subjects", ["curriculum_id"], name: "index_subjects_on_curriculum_id"

  create_table "subtopics", force: true do |t|
    t.string   "name"
    t.integer  "number"
    t.string   "slug"
    t.integer  "topic_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "subtopics", ["topic_id"], name: "index_subtopics_on_topic_id"

  create_table "syllabuses", force: true do |t|
    t.string   "version"
    t.string   "slug"
    t.integer  "subject_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "syllabuses", ["subject_id"], name: "index_syllabuses_on_subject_id"

  create_table "topics", force: true do |t|
    t.string   "name"
    t.integer  "number"
    t.string   "slug"
    t.integer  "syllabus_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "topics", ["syllabus_id"], name: "index_topics_on_syllabus_id"

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
