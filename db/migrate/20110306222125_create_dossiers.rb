class CreateDossiers < ActiveRecord::Migration
  def self.up
    create_table :dossiers do |t|
      t.string :etat
      t.string :reference
      t.string :archivage
      t.string :secteur
      t.string :coordx
      t.string :coordy
      t.text :commentaire
      t.timestamps
    end
  end

  def self.down
    drop_table :dossiers
  end
end
