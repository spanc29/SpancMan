class Dossier < ActiveRecord::Base
  acts_as_audited
  has_associated_audits
  acts_as_taggable

  #validations
  validates :reference, :presence => true, :uniqueness => true, :length => { :maximum => 100 }

  #associations

  has_many :listes
  has_many :users, :as => :userable
  has_many :immeubles, :dependent => :destroy
  #accepts_nested_attributes_for :immeubles, :allow_destroy => true
  has_many :installations, :dependent => :destroy
  accepts_nested_attributes_for :installations, :allow_destroy => true
  has_many :terrains, :dependent => :destroy
  accepts_nested_attributes_for :terrains, :allow_destroy => true
  has_many :entretiens, :dependent => :destroy
  accepts_nested_attributes_for :entretiens, :allow_destroy => true

end
