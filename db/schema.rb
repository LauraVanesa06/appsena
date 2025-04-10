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

ActiveRecord::Schema[8.0].define(version: 2025_04_10_033936) do
  create_table "aprendices", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "ficha_id"
    t.string "documento"
    t.integer "edad"
    t.index ["ficha_id"], name: "index_aprendices_on_ficha_id"
  end

  create_table "cars", force: :cascade do |t|
    t.string "placa"
    t.string "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fichas", force: :cascade do |t|
    t.string "programa"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "libros", force: :cascade do |t|
    t.string "nombre"
    t.string "autor"
    t.string "genero"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movies", force: :cascade do |t|
    t.string "nombre"
    t.date "fecha_public"
    t.string "genero"
    t.integer "duracion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.string "nombre"
    t.integer "documento"
    t.boolean "estado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "personas", force: :cascade do |t|
    t.string "nombre"
    t.string "documento"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "car_id", null: false
    t.index ["car_id"], name: "index_personas_on_car_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "aprendices", "fichas"
  add_foreign_key "personas", "cars"
end
