class Parcelle < ActiveRecord::Base
  attr_accessible :section, :numero, :surface, :immeuble_id
  belongs_to :immeuble

end
