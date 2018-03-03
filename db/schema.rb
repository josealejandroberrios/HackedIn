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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20180302233532) do

  create_table "educations", force: :cascade do |t|
    t.string "place", null: false
    t.string "qualification", null: false
    t.string "discipline", null: false
    t.date "start_date", null: false
=======
ActiveRecord::Schema.define(version: 20180302174818) do

  create_table "educations", force: :cascade do |t|
    t.string "place"
    t.string "qualification"
    t.string "discipline"
    t.date "start_date"
>>>>>>> bc5d770bb128e0e9ac2a5006c62f110d96af11f0
    t.date "finish_date"
    t.integer "profile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_educations_on_profile_id"
  end

<<<<<<< HEAD
  create_table "fullfillments", force: :cascade do |t|
    t.integer "profile_id"
    t.integer "requirement_id"
    t.boolean "status", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_fullfillments_on_profile_id"
    t.index ["requirement_id"], name: "index_fullfillments_on_requirement_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.string "company", null: false
    t.string "position", null: false
    t.string "description", null: false
    t.date "start_date", null: false
=======
  create_table "jobs", force: :cascade do |t|
    t.string "company"
    t.string "position"
    t.string "description"
    t.date "start_date"
>>>>>>> bc5d770bb128e0e9ac2a5006c62f110d96af11f0
    t.date "finish_date"
    t.integer "profile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_jobs_on_profile_id"
  end

  create_table "levels", force: :cascade do |t|
<<<<<<< HEAD
    t.string "name", null: false
    t.text "positive_description", null: false
    t.text "negative_description", null: false
=======
    t.string "name"
    t.text "positive_description"
    t.text "negative_description"
>>>>>>> bc5d770bb128e0e9ac2a5006c62f110d96af11f0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.string "avatar"
<<<<<<< HEAD
    t.text "about", null: false
    t.string "country", null: false
=======
    t.text "about"
    t.string "country"
>>>>>>> bc5d770bb128e0e9ac2a5006c62f110d96af11f0
    t.integer "user_id"
    t.integer "level_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["level_id"], name: "index_profiles_on_level_id"
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

<<<<<<< HEAD
  create_table "profiles_skills", id: false, force: :cascade do |t|
    t.integer "profile_id"
    t.integer "skill_id"
    t.index ["profile_id"], name: "index_profiles_skills_on_profile_id"
    t.index ["skill_id"], name: "index_profiles_skills_on_skill_id"
  end

=======
>>>>>>> bc5d770bb128e0e9ac2a5006c62f110d96af11f0
  create_table "repositories", force: :cascade do |t|
    t.string "link"
    t.integer "profile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_repositories_on_profile_id"
  end

  create_table "requirements", force: :cascade do |t|
<<<<<<< HEAD
    t.string "name", null: false
=======
    t.string "name"
>>>>>>> bc5d770bb128e0e9ac2a5006c62f110d96af11f0
    t.integer "skill_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["skill_id"], name: "index_requirements_on_skill_id"
  end

  create_table "roles", force: :cascade do |t|
<<<<<<< HEAD
    t.string "name", null: false
=======
    t.string "name"
>>>>>>> bc5d770bb128e0e9ac2a5006c62f110d96af11f0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skills", force: :cascade do |t|
<<<<<<< HEAD
    t.string "name", null: false
=======
    t.string "name"
>>>>>>> bc5d770bb128e0e9ac2a5006c62f110d96af11f0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
<<<<<<< HEAD
    t.string "name", null: false
    t.string "lastname", null: false
=======
    t.string "name"
    t.string "lastname"
>>>>>>> bc5d770bb128e0e9ac2a5006c62f110d96af11f0
    t.integer "role_id", default: 2, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["role_id"], name: "index_users_on_role_id"
  end

end
