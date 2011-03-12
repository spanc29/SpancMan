class Immeuble < ActiveRecord::Base
  attr_accessible :numero_rue, :adresse, :code_postal, :commune, :residence, :taux_occupation, :annee_constr, :nb_piece_princ, :nb_eq_hab, :dossier_id, :commentaire

  #validation
  validates :adresse, :presence => true
  validates :commune, :presence => true

  #association
  belongs_to :dossier
  has_many :liste_pieces
  has_many :parcelles
  has_many :compteurs
  accepts_nested_attributes_for :liste_pieces, :reject_if =>  lambda { |a| a[:piece].blank? }, :allow_destroy => true
  accepts_nested_attributes_for :parcelles, :reject_if =>  lambda { |a| a[:section].blank? }, :allow_destroy => true
  accepts_nested_attributes_for :compteurs, :reject_if =>  lambda { |a| a[:type_alimentation].blank? }, :allow_destroy => true

end
