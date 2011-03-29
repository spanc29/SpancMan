class Dossier < ActiveRecord::Base

  #validations
  validates :reference, :presence => true, :uniqueness => true, :length => { :maximum => 100 }

  acts_as_taggable

  #associations
  has_many :listes
  has_many :users, :through => :immeubles

  has_many :immeubles, :dependent => :destroy
  accepts_nested_attributes_for :immeubles

  default_scope order('reference')
end
