class Immeuble < ActiveRecord::Base
  #validation
    #association
  belongs_to :dossier

  has_many :adresses, :as => :adressable
  accepts_nested_attributes_for :adresses, :allow_destroy => true
  has_many :liste_pieces, :dependent => :destroy
  accepts_nested_attributes_for :liste_pieces, :reject_if =>  lambda { |a| a[:piece].blank? }, :allow_destroy => true
  has_many :parcelles, :dependent => :destroy
  accepts_nested_attributes_for :parcelles, :reject_if =>  lambda { |a| a[:section].blank? }, :allow_destroy => true
  has_many :compteurs, :dependent => :destroy
  accepts_nested_attributes_for :compteurs, :reject_if =>  lambda { |a| a[:type_alimentation].blank? }, :allow_destroy => true
  has_many :users
  accepts_nested_attributes_for :users, :reject_if =>  lambda { |a| a[:username].blank? }, :allow_destroy => true


  scope :principal, where(:number => '1')
  default_scope order('number')
end
