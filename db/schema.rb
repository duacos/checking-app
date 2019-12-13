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

ActiveRecord::Schema.define(version: 2019_12_11_193948) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accesos", force: :cascade do |t|
    t.string "politicaControl"
    t.string "controlAcceso"
    t.string "gestionAltasBajas"
    t.string "gestionDerechosUsuarios"
    t.string "gestionDerechosEspeciales"
    t.string "revisionDerechos"
    t.string "retirada"
    t.string "restriccion"
    t.string "procedimientos"
    t.string "gestionPassword"
    t.string "uso"
    t.string "accesoCodigo"
    t.bigint "empresa_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["empresa_id"], name: "index_accesos_on_empresa_id"
  end

  create_table "activos", force: :cascade do |t|
    t.string "inventario"
    t.string "propiedad"
    t.string "uso"
    t.string "devolucion"
    t.string "directrices"
    t.string "etiquetado"
    t.string "gestion"
    t.string "eliminacion"
    t.string "soportes"
    t.bigint "empresa_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["empresa_id"], name: "index_activos_on_empresa_id"
  end

  create_table "ambientes", force: :cascade do |t|
    t.string "perimetros"
    t.string "controles"
    t.string "seguridad"
    t.string "proteccion"
    t.string "areasSeguras"
    t.string "accesoPublico"
    t.string "emplazamiento"
    t.string "instalaciones"
    t.string "cableado"
    t.string "mantenimiento"
    t.string "salidaActivos"
    t.string "seguridadEquipos"
    t.string "reutilizacion"
    t.string "equipo"
    t.string "politica"
    t.bigint "empresa_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["empresa_id"], name: "index_ambientes_on_empresa_id"
  end

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.string "slug"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "desarrollos", force: :cascade do |t|
    t.string "politica"
    t.string "seguridad"
    t.string "funcionalidad"
    t.string "aceptacion"
    t.bigint "empresa_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["empresa_id"], name: "index_desarrollos_on_empresa_id"
  end

  create_table "empresas", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "operativas", force: :cascade do |t|
    t.string "codigoMalicioso"
    t.string "copiaSeguridad"
    t.bigint "empresa_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["empresa_id"], name: "index_operativas_on_empresa_id"
  end

  create_table "politicas", force: :cascade do |t|
    t.string "seguridad_info"
    t.string "revision_string"
    t.integer "empresa_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "teles", force: :cascade do |t|
    t.string "controles"
    t.string "mecanismos"
    t.string "segregacion"
    t.string "politicas"
    t.string "intercambio"
    t.string "mensajeria"
    t.string "confidencialidad"
    t.bigint "empresa_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["empresa_id"], name: "index_teles_on_empresa_id"
  end

  add_foreign_key "accesos", "empresas"
  add_foreign_key "activos", "empresas"
  add_foreign_key "ambientes", "empresas"
  add_foreign_key "desarrollos", "empresas"
  add_foreign_key "operativas", "empresas"
  add_foreign_key "teles", "empresas"
end
