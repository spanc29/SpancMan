class Entretien < ActiveRecord::Base
  attr_accessible :type_entretien, :dossier_id, :ouvrage, :vidangeur, :num_vehicule, :num_bordereau, :date_entretien, :quantite, :destination_boue, :observations

  belongs_to :dossier
end
