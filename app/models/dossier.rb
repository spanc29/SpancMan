class Dossier < ActiveRecord::Base
  #securité
  #attr_accessible :etat, :reference, :archivage, :secteur, :coordx, :coordy, :commentaire
  #validations
  validates :reference, :presence => true, :uniqueness => true, :length => { :maximum => 100 }

  acts_as_taggable

  #associations
  has_many :immeubles, :dependent => :destroy
  has_many :listes
  has_many :users, :through => :immeubles
  accepts_nested_attributes_for :immeubles, :reject_if =>  lambda { |a| a[:commune].blank? }, :allow_destroy => true
end
