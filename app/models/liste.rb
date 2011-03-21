class Liste < ActiveRecord::Base
  #attr_accessible :pour, :nom
  belongs_to :dossier

  #attribution des noms au liste !!

  scope :secteur, where(:pour => 'secteur')
  scope :piece, where(:pour => 'pièce')
  scope :etat, where(:pour => 'état')
  scope :residence, where(:pour => 'résidence')

  #tri par défaut
  default_scope order('listes.pour')
end
