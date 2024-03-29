class Adress < ActiveRecord::Base

  acts_as_audited :associated_with => :adressable

  belongs_to :adressable, :polymorphic => true
  before_create {|adrss| adrss.commune = adrss.commune.upcase()}

  #scope :
  scope :principale, where(:princ => true)
  scope :commune, order('commune desc')
  default_scope order('princ')
end
