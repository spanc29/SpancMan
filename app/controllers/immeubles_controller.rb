class ImmeublesController < ApplicationController
  before_filter :load_dossier
  set_tab :immeuble

  def index
    @immeubles = @dossier.immeubles.order(:number.desc)
  end

  def show
    @immeuble = @dossier.immeubles.find(params[:id])
  end

  def new
    @immeuble = @dossier.immeubles.new
        @immeuble.users.build
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
    @immeuble = @dossier.immeubles.find(params[:id])
  end

  def update
    @immeuble = @dossier.immeubles.find(params[:id])

    if @immeuble.update_attributes(params[:immeuble])
      redirect_to dossier_immeubles_path, :notice  => "immeuble correctement ravalé ou modifié"
    else
      render :action => 'edit'
    end
  end

  def destroy
    @immeuble = @dossier.immeubles.find(params[:id])
    @immeuble.destroy
    redirect_to dossier_immeubles_path, :notice => "Destruction immeuble réussie"
  end

private
  def load_dossier
    @dossier = Dossier.find(params[:dossier_id])
  end
end
