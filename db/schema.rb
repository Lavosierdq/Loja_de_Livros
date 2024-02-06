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

ActiveRecord::Schema[7.1].define(version: 2024_02_05_150753) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "autors", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "conta", force: :cascade do |t|
    t.string "num_conta"
    t.string "digito_verificador"
    t.string "id_forn"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "forn_pecas", force: :cascade do |t|
    t.string "id_peca"
    t.string "id_forn"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fornecedors", force: :cascade do |t|
    t.string "nome_fornecedor"
    t.string "id_conta"
    t.string "CNPJ"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "livros", force: :cascade do |t|
    t.string "titulo"
    t.bigint "autor_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["autor_id"], name: "index_livros_on_autor_id"
  end

  create_table "montagems", force: :cascade do |t|
    t.string "cadastro_Montagem"
    t.string "id_livro"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pecas", force: :cascade do |t|
    t.string "nome"
    t.string "id_FornPeca"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "livros", "autors"
end
