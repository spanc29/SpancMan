class Horizon < ActiveRecord::Base
  attr_accessible :debut, :fin, :type_horizon, :couleur, :hydromorphie, :texture, :abondance_pierrosite, :taille_pierrosite, :compacite, :abondance_racine, :transition_horizon, :observations
end
