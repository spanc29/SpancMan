class Terrain < ActiveRecord::Base
  attr_accessible :type_terrain, :observations
  acts_as_audited :associated_with => :dossier

  belongs_to :dossier
  has_many :sondages
  accepts_nested_attributes_for :sondages, :allow_destroy => true
  has_many :pentes
  accepts_nested_attributes_for :pentes, :allow_destroy => true
  has_many :plantations
  accepts_nested_attributes_for :plantations, :allow_destroy => true
  has_many :hydros
  accepts_nested_attributes_for :hydros, :allow_destroy => true
  has_many :surfaciques
  accepts_nested_attributes_for :surfaciques, :allow_destroy => true

end
