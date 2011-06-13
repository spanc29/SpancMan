class ComptabsController < ApplicationController
  before_filter :load_dossier
  set_tab :compta

  def index
    @compta = @dossier.comptabs.all
  end

  def show
    @compta = @dossier.comptabs.find(params[:id])
  end

  def new
    @compta = @dossier.comptabs.new
  end

  def create
    @compta = @dossier.comptabs.new(params[:comptab])
    if @compta.save
      redirect_to dossier_comptabs_path, :notice => "Redevance/facture bien additionnée"
    else
      render :action => 'new'
    end
  end

  def edit
    @compta = @dossier.comptabs.find(params[:id])
  end

  def update
    @compta = @dossier.comptabs.find(params[:id])
    if @compta.update_attributes(params[:comptab])
      redirect_to dossier_comptabs_path, :notice  => "Mise à jour comptabilisée"
    else
      render :action => 'edit'
    end
  end

  def destroy
    @compta = @dossier.comptabs.find(params[:id])
    @compta.destroy
    redirect_to comptab_url, :notice => "Destruction redevance/facture réussie"
  end

private
  def load_dossier
    @dossier = Dossier.find(params[:dossier_id])
  end
end
