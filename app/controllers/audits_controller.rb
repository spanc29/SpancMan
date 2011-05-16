class AuditsController < ApplicationController
  set_tab :historique
  before_filter :load_dossier

def index
  @audits = Audit.where({:auditable_id => @dossier,:auditable_type => 'Dossier'} | {:association_id => @dossier, :association_type => 'Dossier'}).order('audits.created_at DESC')
  @audits_by_date = @audits.group_by{|t| t.created_at.to_date}
end


private
  def load_dossier
    @dossier = Dossier.find(params[:dossier_id])
  end
end
