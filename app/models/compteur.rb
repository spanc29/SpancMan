class Compteur < ActiveRecord::Base
  attr_accessible :type_alimentation, :ref_compteur, :declare, :conso_moyenne, :analyse_OK, :immeuble_id, :commentaire
  belongs_to :immeuble
end
