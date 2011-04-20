class ListePiece < ActiveRecord::Base
  belongs_to :immeuble
  scope :genere, where(:genere_EU => true)
end
