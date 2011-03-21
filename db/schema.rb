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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110321221434) do

  create_table "compteurs", :force => true do |t|
    t.integer  "type_alimentation"
    t.string   "ref_compteur"
    t.boolean  "declare"
    t.integer  "conso_moyenne"
    t.boolean  "analyse_OK"
    t.integer  "immeuble_id"
    t.text     "commentaire"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dossiers", :force => true do |t|
    t.string   "etat"
    t.string   "reference"
    t.string   "archivage"
    t.string   "secteur"
    t.string   "coordx"
    t.string   "coordy"
    t.text     "commentaire"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "immeubles", :force => true do |t|
    t.string   "numero_rue"
    t.text     "adresse"
    t.string   "code_postal"
    t.string   "commune"
    t.string   "residence"
    t.string   "taux_occupation"
    t.string   "annee_constr"
    t.integer  "nb_piece_princ"
    t.integer  "nb_eq_hab"
    t.integer  "dossier_id"
    t.text     "commentaire"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "liste_pieces", :force => true do |t|
    t.string   "piece"
    t.string   "details"
    t.integer  "surface"
    t.boolean  "genEU"
    t.integer  "immeuble_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "piece_princ"
  end

  create_table "listes", :force => true do |t|
    t.string   "pour"
    t.string   "nom"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "parcelles", :force => true do |t|
    t.string   "section"
    t.integer  "numero"
    t.integer  "surface"
    t.integer  "immeuble_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "recipes", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "taggings", :force => true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context"
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id"], :name => "index_taggings_on_tag_id"
  add_index "taggings", ["taggable_id", "taggable_type", "context"], :name => "index_taggings_on_taggable_id_and_taggable_type_and_context"

  create_table "tags", :force => true do |t|
    t.string "name"
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
