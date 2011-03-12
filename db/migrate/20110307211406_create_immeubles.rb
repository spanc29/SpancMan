class CreateImmeubles < ActiveRecord::Migration
  def self.up
    create_table :immeubles do |t|
      t.string :numero_rue
      t.text :adresse
      t.string :code_postal
      t.string :commune
      t.string :residence
      t.string :taux_occupation
      t.string :annee_constr
      t.integer :nb_piece_princ
      t.integer :nb_eq_hab
      t.integer :dossier_id
      t.text :commentaire
      t.timestamps
    end
  end

  def self.down
    drop_table :immeubles
  end
end
