class CreateParcelles < ActiveRecord::Migration
  def self.up
    create_table :parcelles do |t|
      t.string :section
      t.integer :numero
      t.integer :surface
      t.integer :immeuble_id
      t.timestamps
    end
  end

  def self.down
    drop_table :parcelles
  end
end
