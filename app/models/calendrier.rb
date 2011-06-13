class Calendrier < ActiveRecord::Base
  acts_as_audited

  has_many :rdvs, :dependent => :destroy

end
