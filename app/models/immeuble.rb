class Immeuble < ActiveRecord::Base
  #validation
    #association
  belongs_to :dossier
  has_many :liste_pieces, :dependent => :destroy
  has_many :parcelles, :dependent => :destroy
  has_many :compteurs,:dependent => :destroy
  has_many :users
  has_many :adresses, :as => :adressable
  accepts_nested_attributes_for :adresses, :allow_destroy => true
  accepts_nested_attributes_for :liste_pieces, :reject_if =>  lambda { |a| a[:piece].blank? }, :allow_destroy => true
  accepts_nested_attributes_for :parcelles, :reject_if =>  lambda { |a| a[:section].blank? }, :allow_destroy => true
  accepts_nested_attributes_for :compteurs, :reject_if =>  lambda { |a| a[:type_alimentation].blank? }, :allow_destroy => true
  accepts_nested_attributes_for :users, :reject_if =>  lambda { |a| a[:username].blank? }, :allow_destroy => true


  scope :principal, where(:adresses => {:princ =>true}).joins(:adresses)
end
