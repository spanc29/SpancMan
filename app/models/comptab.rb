class Comptab < ActiveRecord::Base
  #attr_accessible :type_facture, :date_emission, :date_limite, :montant_HT, :montant_TVA, :montant_total, :bordereau, :titre, :ref_redevance, :regler, :etat_comptable, :commentaire, :destinataire, :dossier_id

  belongs_to :dossier
end
