class Rdv < ActiveRecord::Base
  #attr_accessible :type_rdv, :debut_rdv, :fin_rdv, :controleur, :contact, :ref_dossier, :lieu, :rappel, :description
  has_event_calendar :start_at_field  => 'debut_rdv', :end_at_field => 'fin_rdv'
  belongs_to :calendrier
end
