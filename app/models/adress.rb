class Adress < ActiveRecord::Base
  belongs_to :adressable, :polymorphic => true

  before_create {|adress| adress.commune = adress.commune.upcase()}

  scope :principale, where(:princ => true)

  scope :commune, order('commune desc')

  default_scope order('princ')
end
