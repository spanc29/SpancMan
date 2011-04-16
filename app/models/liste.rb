class Liste < ActiveRecord::Base

  belongs_to :dossier

  #attribution des noms au liste !!

  scope :partie, group(:partie)

  scope :secteur, where(:pour => 'secteur')
  scope :piece, where(:pour => 'pièce')
  scope :etat, where(:pour => 'état')
  scope :commune, where(:pour => 'commune')
  scope :type_habitat, where(:pour => 'type habitat')
  scope :type_adresse, where(:pour => 'type adresse')
  scope :type_mail, where(:pour => 'type mail')
  scope :type_instal, where(:pour => 'type installation')


  #tri par défaut
  default_scope order('partie')
end
