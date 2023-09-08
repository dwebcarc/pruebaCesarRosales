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

ActiveRecord::Schema[7.0].define(version: 2023_09_08_003901) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cita", force: :cascade do |t|
    t.date "fechaHora"
    t.string "duracion"
    t.bigint "estado_citum_id", null: false
    t.bigint "mascota_id", null: false
    t.bigint "veterinario_id", null: false
    t.bigint "servicio_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["estado_citum_id"], name: "index_cita_on_estado_citum_id"
    t.index ["mascota_id"], name: "index_cita_on_mascota_id"
    t.index ["servicio_id"], name: "index_cita_on_servicio_id"
    t.index ["veterinario_id"], name: "index_cita_on_veterinario_id"
  end

  create_table "clientes", force: :cascade do |t|
    t.string "nombre"
    t.string "apellidos"
    t.string "direccion"
    t.string "telefono"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "estado_cita", force: :cascade do |t|
    t.string "nombreEstado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mascota", force: :cascade do |t|
    t.string "nombre"
    t.string "especie"
    t.string "raza"
    t.string "fotoPerfil"
    t.string "fechaNacimiento"
    t.string "notas"
    t.bigint "clientes_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["clientes_id"], name: "index_mascota_on_clientes_id"
  end

  create_table "servicios", force: :cascade do |t|
    t.string "nombreServicio"
    t.string "descripcionServicio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "veterinarios", force: :cascade do |t|
    t.string "nombre"
    t.string "apellidos"
    t.string "especialidad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "cita", "estado_cita"
  add_foreign_key "cita", "mascota", column: "mascota_id"
  add_foreign_key "cita", "servicios"
  add_foreign_key "cita", "veterinarios"
  add_foreign_key "mascota", "clientes", column: "clientes_id"
end
