class Immeuble < ActiveRecord::Base
  #validation
    #association
  acts_as_audited :associated_with => :dossier
  belongs_to :dossier

  has_many :liste_pieces, :dependent => :destroy
  accepts_nested_attributes_for :liste_pieces, :reject_if =>  lambda { |a| a[:piece].blank? }, :allow_destroy => true
  has_many :parcelles, :dependent => :destroy
  accepts_nested_attributes_for :parcelles, :reject_if =>  lambda { |a| a[:section].blank? }, :allow_destroy => true
  has_many :compteurs, :dependent => :destroy
  accepts_nested_attributes_for :compteurs, :reject_if =>  lambda { |a| a[:type_alimentation].blank? }, :allow_destroy => true
  has_many :users, :dependent => :destroy
  accepts_nested_attributes_for :users, :allow_destroy => true


  scope :principal, where(:number => '1')
  default_scope order('number')
end
