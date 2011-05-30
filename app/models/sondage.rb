class Sondage < ActiveRecord::Base
  attr_accessible :numero_sondage, :date_sondage, :tech_sond, :x_sond, :y_sond, :precipitation_anterieure, :prof_atteinte, :observations
  acts_as_audited

  belongs_to :terrain
  has_many :horizons
  accepts_nested_attributes_for :horizons, :allow_destroy => true

end
