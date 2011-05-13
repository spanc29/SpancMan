class Liste < ActiveRecord::Base

  belongs_to :dossier

  #attribution des noms au liste !!

  scope :partie, group(:partie)

  scope :secteur, where(:pour => 'secteur')
  scope :piece, where(:pour => 'pièce')
  scope :etat, where(:pour => 'état')
  scope :commune, where(:pour => 'commune')
  scope :type_habitat, where(:pour => 'type habitat')
  scope :taux_occupation, where(:pour => 'taux occupation')
  scope :type_adresse, where(:pour => 'type adresse')
  scope :type_mail, where(:pour => 'type mail')
  scope :type_install, where(:pour => 'type installation')
  scope :type_pretr, where(:pour => 'type prétraitement')

  scope :categorie, where(:pour => 'catégories groupe')


  #tri par défaut
  default_scope order('partie')
end
