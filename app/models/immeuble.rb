class Immeuble < ActiveRecord::Base
  #attr_accessible :taux_occupation, :annee_constr, :nb_piece_princ, :nb_eq_hab, :dossier_id, :commentaire

  #validation

  #association
  belongs_to :dossier
  has_many :liste_pieces
  has_many :parcelles
  has_many :compteurs
  has_many :users
  has_many :adresses, :as => :adressable
  accepts_nested_attributes_for :liste_pieces, :reject_if =>  lambda { |a| a[:piece].blank? }, :allow_destroy => true
  accepts_nested_attributes_for :parcelles, :reject_if =>  lambda { |a| a[:section].blank? }, :allow_destroy => true
  accepts_nested_attributes_for :compteurs, :reject_if =>  lambda { |a| a[:type_alimentation].blank? }, :allow_destroy => true
  accepts_nested_attributes_for :adresses, :reject_if =>  lambda { |a| a[:commune].blank? }, :allow_destroy => true
  accepts_nested_attributes_for :users, :reject_if =>  lambda { |a| a[:username].blank? }, :allow_destroy => true

end
