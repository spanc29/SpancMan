class Dossier < ActiveRecord::Base
  acts_as_taggable

  #validations
  validates :reference, :presence => true, :uniqueness => true, :length => { :maximum => 100 }

  #associations
  has_many :listes

  has_many :users, :through => :immeubles

  has_many :installations
  has_many :immeubles, :dependent => :destroy
  accepts_nested_attributes_for :immeubles
  accepts_nested_attributes_for :installations

end
