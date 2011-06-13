class Liste < ActiveRecord::Base

  belongs_to :dossier

  #attribution des noms au liste !!

  scope :partie, group(:partie)

  scope :secteur, where(:pour => 'secteur')
  scope :piece, where(:pour => 'pièce')
  scope :alimentation, where(:pour => 'alimentation')
  scope :etat, where(:pour => 'état')
  scope :fonction, where(:pour => 'fonction')
  scope :commune, where(:pour => 'commune')
  scope :type_habitat, where(:pour => 'type habitat')
  scope :taux_occupation, where(:pour => 'taux occupation')
  scope :type_adresse, where(:pour => 'type adresse')
  scope :type_mail, where(:pour => 'type mail')
  scope :type_phone, where(:pour => 'type téléphone')
  scope :type_install, where(:pour => 'type installation')
  scope :type_pretr, where(:pour => 'type prétraitement')
  scope :entretien, where(:pour => 'entretien')

  scope :categories, where(:pour => 'catégories groupe')


  #tri par défaut
  default_scope order('pour')
end
