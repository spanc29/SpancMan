class Installation < ActiveRecord::Base
  #attr_accessible :dossier_id, :type_instal
  acts_as_audited :associated_with => :dossier

  belongs_to :dossier
  has_many :pretraitements
  accepts_nested_attributes_for :pretraitements, :allow_destroy => true
  has_many :traitements
  accepts_nested_attributes_for :traitements, :allow_destroy => true
  has_many :epandages
  accepts_nested_attributes_for :epandages, :allow_destroy =>true

end
