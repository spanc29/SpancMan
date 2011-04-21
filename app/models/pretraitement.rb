class Pretraitement < ActiveRecord::Base
  # attr_accessible :type_pretr, :materiau, :volume, :origine, :sortie, :installation_id, :ecoulement, :vue, :etancheite

  belongs_to :installation

end
