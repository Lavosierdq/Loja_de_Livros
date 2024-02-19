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

ActiveRecord::Schema[7.1].define(version: 2024_02_12_131752) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "autors", force: :cascade do |t|
    t.string "nome"
    t.string "cpf"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "livros", force: :cascade do |t|
    t.string "titulo"
    t.string "isbn"
    t.bigint "autor_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["autor_id"], name: "index_livros_on_autor_id"
  end

  create_table "livros_monstagems", id: false, force: :cascade do |t|
    t.bigint "livro_id"
    t.bigint "montagem_id"
    t.index ["livro_id"], name: "index_livros_monstagems_on_livro_id"
    t.index ["montagem_id"], name: "index_livros_monstagems_on_montagem_id"
  end

  create_table "montagem_pecas", id: false, force: :cascade do |t|
    t.bigint "montagem_id"
    t.bigint "peca_id"
    t.index ["montagem_id"], name: "index_montagem_pecas_on_montagem_id"
    t.index ["peca_id"], name: "index_montagem_pecas_on_peca_id"
  end

  create_table "montagems", force: :cascade do |t|
    t.string "cadastro_montage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pecas", force: :cascade do |t|
    t.string "nome_peca"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "livros", "autors"
  add_foreign_key "livros_monstagems", "livros"
  add_foreign_key "livros_monstagems", "montagems"
  add_foreign_key "montagem_pecas", "montagems"
  add_foreign_key "montagem_pecas", "pecas"
end
