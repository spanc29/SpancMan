class Installation < ActiveRecord::Base
  #attr_accessible :dossier_id, :type_instal

  belongs_to :dossier
  has_many :pretraitements
  has_many :traitements
  accepts_nested_attributes_for :pretraitements, :allow_destroy => true
  accepts_nested_attributes_for :traitements, :allow_destroy => true

end
