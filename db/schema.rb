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

ActiveRecord::Schema.define(version: 20180515100416) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dizimos", force: :cascade do |t|
    t.string "ano"
    t.boolean "jan"
    t.boolean "fev"
    t.boolean "mar"
    t.boolean "abr"
    t.boolean "mai"
    t.boolean "jun"
    t.boolean "jul"
    t.boolean "ago"
    t.boolean "set"
    t.boolean "out"
    t.boolean "nov"
    t.boolean "des"
    t.bigint "membro_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "janv"
    t.string "fevv"
    t.string "marv"
    t.string "abrv"
    t.string "maiv"
    t.string "junv"
    t.string "julv"
    t.string "agov"
    t.string "setv"
    t.string "outv"
    t.string "novv"
    t.string "desv"
    t.index ["membro_id"], name: "index_dizimos_on_membro_id"
  end

  create_table "membros", force: :cascade do |t|
    t.string "nome"
    t.string "pai"
    t.string "mae"
    t.string "residencia"
    t.string "nacionalidade"
    t.string "naturalidade"
    t.string "provincia"
    t.datetime "nascimento"
    t.boolean "sexo"
    t.string "estado_civil"
    t.string "peso"
    t.string "altura"
    t.datetime "data_casamento"
    t.text "agregado"
    t.string "localbaptismo"
    t.datetime "data_batismo"
    t.string "localconfirmacao"
    t.datetime "data_confirmacao"
    t.string "categoriareligiosa"
    t.string "cargolideranca"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "apagado"
    t.string "sociedade"
    t.string "bi"
    t.boolean "casado"
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nivel"
    t.index ["email"], name: "index_usuarios_on_email", unique: true
    t.index ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true
  end

  add_foreign_key "dizimos", "membros"
end
