class Traitement < ActiveRecord::Base
  attr_accessible :type_traitement, :volume, :installation_id, :commentaire
  belongs_to :traitement
end
