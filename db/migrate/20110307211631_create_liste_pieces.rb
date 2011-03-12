class CreateListePieces < ActiveRecord::Migration
  def self.up
    create_table :liste_pieces do |t|
      t.string :piece
      t.string :details
      t.integer :surface
      t.boolean :genEU
      t.integer :immeuble_id
      t.timestamps
    end
  end

  def self.down
    drop_table :liste_pieces
  end
end
