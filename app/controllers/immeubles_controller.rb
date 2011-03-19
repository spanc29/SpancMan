class ImmeublesController < ApplicationController
  before_filter :load_dossier
  set_tab :immeuble
  def index
    @immeubles = @dossier.immeubles.all
  end

  def show
    @immeuble = @dossier.immeubles.find(params[:id])
    @compteur = Compteur.find_by_immeuble_id(:immeuble.id)
  end

  def new
    @immeuble = @dossier.immeubles.new
  end

  def create
    @immeuble = @dossier.immeubles.new(params[:immeuble])
    if @immeuble.save
      redirect_to dossier_immeubles_path, :notice => "trop bien le nouvel immeuble"
    else
      render :action => 'new'
    end
  end

  def edit
    @immeuble = Immeuble.find(params[:id])
  end

  def update
    @immeuble = Immeuble.find(params[:id])
    if @immeuble.update_attributes(params[:immeuble])
      redirect_to @immeuble, :notice  => "immeuble correctement ravalé ou modifié"
    else
      render :action => 'edit'
    end
  end

  def destroy
    @immeuble = Immeuble.find(params[:id])
    @immeuble.destroy
    redirect_to immeubles_url, :notice => "Successfully destroyed immeuble."
  end

private
  def load_dossier
    @dossier = Dossier.find(params[:dossier_id])
  end
end
