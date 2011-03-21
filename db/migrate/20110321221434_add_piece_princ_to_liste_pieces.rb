class AddPiecePrincToListePieces < ActiveRecord::Migration
  def self.up
    add_column :liste_pieces, :piece_princ, :boolean
  end

  def self.down
    remove_column :liste_pieces, :piece_princ
  end
end
