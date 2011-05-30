class Terrain < ActiveRecord::Base
  attr_accessible :type_terrain, :observations
  acts_as_audited

  belongs_to :dossier
  has_many :sondages
  accepts_nested_attributes_for :sondages, :allow_destroy => true

end
