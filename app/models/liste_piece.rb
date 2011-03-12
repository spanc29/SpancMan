class ListePiece < ActiveRecord::Base
  attr_accessible :piece, :details, :surface, :genEU, :immeuble_id
  belongs_to :immeuble

end
