class Dossier < ActiveRecord::Base
  acts_as_taggable

  #validations
  validates :reference, :presence => true, :uniqueness => true, :length => { :maximum => 100 }

  #associations
  has_many :listes

  has_many :users, :through => :immeubles

  has_many :installations, :dependent => :destroy
  has_many :immeubles, :dependent => :destroy
  accepts_nested_attributes_for :immeubles, :allow_destroy => true
  accepts_nested_attributes_for :installations, :allow_destroy => true

end
