class Liste < ActiveRecord::Base

  belongs_to :dossier

  #attribution des noms au liste !!

  scope :partie, group(:partie)

  scope :secteur, where(:pour => 'secteur')
  scope :piece, where(:pour => 'pièce')
  scope :etat, where(:pour => 'état')
  scope :type_habitat, where(:pour => 'type habitat')
  scope :type_adresse, where(:pour => 'type adresse')
  scope :type_mail, where(:pour => 'type mail')


  #tri par défaut
  default_scope order('listes.partie')
end
