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

ActiveRecord::Schema.define(:version => 20110325222239) do

  create_table "adresses", :force => true do |t|
    t.integer  "numero_rue"
    t.text     "contenu"
    t.integer  "code_postal"
    t.string   "commune"
    t.integer  "type_adresse"
    t.boolean  "princ"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "adressable_id"
    t.string   "adressable_type"
    t.integer  "immeuble_id"
  end

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

  create_table "groupes", :force => true do |t|
    t.string   "nom"
    t.boolean  "actif"
    t.string   "agrement"
    t.date     "date_expiration"
    t.date     "date_adhesion"
    t.text     "commentaire"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "immeubles", :force => true do |t|
    t.string   "type_habitat"
    t.string   "taux_occupation"
    t.string   "annee_constr"
    t.string   "annee_renov"
    t.integer  "nb_piece_princ"
    t.integer  "nb_eq_hab_min"
    t.integer  "nb_eq_hab_max"
    t.text     "commentaire"
    t.integer  "dossier_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "liste_pieces", :force => true do |t|
    t.string   "piece"
    t.string   "details"
    t.integer  "surface"
    t.boolean  "genere_EU"
    t.boolean  "est_piece_princ"
    t.integer  "immeuble_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "listes", :force => true do |t|
    t.string   "pour"
    t.string   "nom"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mails", :force => true do |t|
    t.string   "email"
    t.integer  "type_mail"
    t.boolean  "princ"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "mailable_id"
    t.string   "mailable_type"
  end

  create_table "parcelles", :force => true do |t|
    t.string   "section"
    t.integer  "numero"
    t.integer  "surface"
    t.integer  "immeuble_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "phones", :force => true do |t|
    t.string   "numero"
    t.integer  "type_phone"
    t.boolean  "princ"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "phonable_id"
    t.string   "phonable_type"
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
    t.string   "photo"
    t.integer  "fonction"
    t.date     "date_arrivee"
    t.text     "commentaire"
    t.integer  "groupe_id"
  end

end
