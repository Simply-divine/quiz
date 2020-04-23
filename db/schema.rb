# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_23_144526) do

  create_table "genres", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "questions", force: :cascade do |t|
    t.integer "subgenre_id"
    t.string "question"
    t.string "option1"
    t.string "option2"
    t.string "option3"
    t.string "option4"
    t.boolean "check1"
    t.boolean "check2"
    t.boolean "check3"
    t.boolean "check4"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["subgenre_id"], name: "index_questions_on_subgenre_id"
  end

  create_table "subgenres", force: :cascade do |t|
    t.string "name"
    t.integer "genre_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["genre_id"], name: "index_subgenres_on_genre_id"
  end

  create_table "user_quizzes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "subgenre_id"
    t.integer "score"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["subgenre_id"], name: "index_user_quizzes_on_subgenre_id"
    t.index ["user_id"], name: "index_user_quizzes_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "name", default: "", null: false
    t.string "password_digest", default: "", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "admin", default: false
    t.integer "cqscore", default: 0
    t.integer "score", default: 0
    t.integer "presentquizid", default: 0
    t.integer "presentquizqueid", default: 0
    t.string "reset_password_token", default: "", null: false
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip", default: "", null: false
    t.string "last_sign_in_ip", default: "", null: false
  end

  add_foreign_key "questions", "subgenres"
  add_foreign_key "subgenres", "genres"
  add_foreign_key "user_quizzes", "subgenres"
  add_foreign_key "user_quizzes", "users"
end
