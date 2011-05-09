class Regard < ActiveRecord::Base
  attr_accessible :materiaux, :nb_rehausse, :type_regard, :forme, :securite, :type_renseignements, :saturation, :integrite, :nb_entree, :nb_sortie, :regardable_id, :regardable_type, :observations
  belongs_to :regardable, :polymorphic => true
end
