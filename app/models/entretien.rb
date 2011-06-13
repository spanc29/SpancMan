class Entretien < ActiveRecord::Base
  #attr_accessible :type_entretien, :dossier_id, :ouvrage, :vidangeur, :num_vehicule, :num_bordereau, :date_entretien, :quantite, :destination_boue, :observations
  acts_as_audited :associated_with => :dossier
  belongs_to :dossier
end
