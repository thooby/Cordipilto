# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100621203746) do

  create_table "accesos", :force => true do |t|
    t.string   "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "adquis", :force => true do |t|
    t.string   "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "aguas", :force => true do |t|
    t.string   "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "alfabes", :force => true do |t|
    t.string   "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "color_suelos", :force => true do |t|
    t.string   "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comunidades", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fertilizas", :force => true do |t|
    t.string   "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fincas", :force => true do |t|
    t.string   "descripcion"
    t.integer  "agua_id"
    t.integer  "area_tot"
    t.integer  "area_cafe"
    t.integer  "area_agric"
    t.integer  "area_bosque"
    t.integer  "area_potrero"
    t.integer  "area_guat"
    t.integer  "adqui_id"
    t.integer  "altura"
    t.integer  "lat"
    t.integer  "lon"
    t.integer  "municipio_id"
    t.integer  "acceso_id"
    t.integer  "invier_acceso_id"
    t.integer  "verano_acceso_id"
    t.integer  "tipo_suelo_id"
    t.integer  "color_suelo_id"
    t.integer  "profun_suelo_id"
    t.integer  "topogra_id"
    t.integer  "fertiliza_id"
    t.integer  "comunidade_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fotos", :force => true do |t|
    t.string   "url"
    t.string   "titulo"
    t.string   "lat"
    t.string   "lon"
    t.integer  "finca_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "generos", :force => true do |t|
    t.string   "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "invier_accesos", :force => true do |t|
    t.string   "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "municipios", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "nacionas", :force => true do |t|
    t.string   "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "openmapas", :force => true do |t|
    t.string   "codigo_html"
    t.integer  "municipio_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "parentescos", :force => true do |t|
    t.string   "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "personas", :force => true do |t|
    t.integer  "finca_id"
    t.string   "nombre1"
    t.string   "nombre2"
    t.string   "apellido1"
    t.string   "apellido2"
    t.date     "fecha_nac"
    t.integer  "genero_id"
    t.integer  "alfabe_id"
    t.integer  "naciona_id"
    t.string   "direccion"
    t.integer  "profesion_id"
    t.integer  "parentesco_id"
    t.boolean  "cabeza_familia"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "profesions", :force => true do |t|
    t.string   "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "profun_suelos", :force => true do |t|
    t.string   "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipo_suelos", :force => true do |t|
    t.string   "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "topogras", :force => true do |t|
    t.string   "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "verano_accesos", :force => true do |t|
    t.string   "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
