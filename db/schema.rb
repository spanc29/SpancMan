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

ActiveRecord::Schema.define(:version => 20110507225114) do

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

  create_table "audits", :force => true do |t|
    t.integer  "auditable_id"
    t.string   "auditable_type"
    t.integer  "association_id"
    t.string   "association_type"
    t.integer  "user_id"
    t.string   "user_type"
    t.string   "username"
    t.string   "action"
    t.text     "audited_changes"
    t.integer  "version",          :default => 0
    t.string   "comment"
    t.string   "remote_address"
    t.datetime "created_at"
  end

  add_index "audits", ["association_id", "association_type"], :name => "association_index"
  add_index "audits", ["auditable_id", "auditable_type"], :name => "auditable_index"
  add_index "audits", ["created_at"], :name => "index_audits_on_created_at"
  add_index "audits", ["user_id", "user_type"], :name => "user_index"

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
    t.integer  "commune"
  end

  create_table "epandages", :force => true do |t|
    t.integer  "nb_epandage"
    t.float    "long_epand"
    t.float    "largeur_epand"
    t.float    "profondeur"
    t.float    "epaisseur_graviers"
    t.string   "calibre_graviers"
    t.float    "entraxes"
    t.integer  "installation_id"
    t.integer  "type_renseignements"
    t.boolean  "saturation"
    t.boolean  "ok"
    t.text     "observations"
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
    t.integer  "number"
    t.string   "numero_rue"
    t.text     "adresse"
    t.integer  "code_postal"
    t.integer  "commune"
  end

  create_table "installations", :force => true do |t|
    t.integer  "dossier_id"
    t.integer  "type_instal"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "date"
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
    t.string   "partie"
    t.boolean  "modifiable"
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

  create_table "pretraitements", :force => true do |t|
    t.integer  "type_pretr"
    t.integer  "materiau"
    t.integer  "volume"
    t.text     "origine"
    t.string   "sortie"
    t.integer  "installation_id"
    t.boolean  "ecoulement"
    t.integer  "vue"
    t.boolean  "etancheite"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "regards", :force => true do |t|
    t.integer  "materiaux"
    t.integer  "nb_rehausse"
    t.integer  "type_regard"
    t.integer  "forme"
    t.boolean  "securite"
    t.integer  "type_renseignements"
    t.boolean  "saturation"
    t.boolean  "integrite"
    t.integer  "nb_entree"
    t.integer  "nb_sortie"
    t.integer  "regardable_id"
    t.string   "regardable_type"
    t.text     "observations"
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

  create_table "traitements", :force => true do |t|
    t.integer  "type_traitement"
    t.integer  "volume"
    t.integer  "installation_id"
    t.text     "commentaire"
    t.datetime "created_at"
    t.datetime "updated_at"
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
    t.integer  "immeuble_id"
    t.boolean  "destinataire"
    t.boolean  "redevable"
  end

  create_table "versions", :force => true do |t|
    t.string   "item_type",  :null => false
    t.integer  "item_id",    :null => false
    t.string   "event",      :null => false
    t.string   "whodunnit"
    t.text     "object"
    t.datetime "created_at"
  end

  add_index "versions", ["item_type", "item_id"], :name => "index_versions_on_item_type_and_item_id"

end
