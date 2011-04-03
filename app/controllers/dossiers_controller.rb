class DossiersController < ApplicationController
  set_tab :dossier

  def index
    @search = Dossier.search(params[:search])
    @dossiers = @search.all


  end

  def show
    @dossier = Dossier.find(params[:id])
    @proprio = @dossier.users.where(:destinataire => true & {:immeuble => {:dossier_id => params[:id]}}).joins(:immeuble)
    @list = Liste.find_by_id(@dossier.secteur)
  end

  def new
    @dossier = Dossier.new
  end

  def create

    @dossier = Dossier.new(params[:dossier])
    letcaptital(@dossier.reference)
    if @dossier.save
      redirect_to @dossier, :notice => "Dossier créé avec brio"
    else
      render :action => 'new'
    end
  end

  def edit
    @dossier = Dossier.find(params[:id])
  end

  def update
    @dossier = Dossier.find(params[:id])
    if @dossier.update_attributes(params[:dossier])
      redirect_to @dossier, :notice  => "Dossier magnifiquement mis à jour"
    else
      render :action => 'edit'
    end
  end

  def destroy
    @dossier = Dossier.find(params[:id])
    @dossier.destroy
    redirect_to dossiers_url, :notice => "Successfully destroyed dossier."
  end


  def letcaptital(objet)
    return objet.upcase
  end
end
