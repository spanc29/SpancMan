class ListePiece < ActiveRecord::Base
  acts_as_audited :associated_with => :immeuble
  belongs_to :immeuble
  scope :genere, where(:genere_EU => true)
end
