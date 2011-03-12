class CreateCompteurs < ActiveRecord::Migration
  def self.up
    create_table :compteurs do |t|
      t.integer :type_alimentation
      t.string :ref_compteur
      t.boolean :declare
      t.integer :conso_moyenne
      t.boolean :analyse_OK
      t.integer :immeuble_id
      t.text :commentaire
      t.timestamps
    end
  end

  def self.down
    drop_table :compteurs
  end
end
