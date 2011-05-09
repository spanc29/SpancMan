class Epandage < ActiveRecord::Base
  attr_accessible :nb_epandage, :long_epand, :largeur_epand, :profondeur, :epaisseur_graviers, :calibre_graviers, :entraxes, :installation_id, :type_renseignements, :saturation, :ok, :observations
  belongs_to :installation
  has_many :regards, :as => :regardable, :dependent => :destroy
  accepts_nested_attributes_for :regards, :allow_destroy => true
end
