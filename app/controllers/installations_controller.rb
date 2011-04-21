class InstallationsController < ApplicationController
  before_filter :load_dossier
  set_tab :installation

  def index
    @installations = @dossier.installations.all
    @liste = Liste.type_install
  end

  def show
    @installation = @dossier.installations.find(params[:id])
    @list_type = Liste.find_by_id(@installation.id)
  end

  def new
    @installation = @dossier.installations.new
    @immeubles = @dossier.immeubles


  end

  def create
    @installation = @dossier.installations.new(params[:installation])
    if @installation.save
      redirect_to dossier_installations_path, :notice => "Installation courageusement mise en place"
    else
      render :action => 'new'
    end
  end

  def edit
    @installation = @dossier.installations.find(params[:id])
  end

  def update
    @installation = @dossier.installations.find(params[:id])

    if @installation.update_attributes(params[:installation])
      redirect_to dossier_installations_path, :notice  => "installation mise à jour"
    else
      render :action => 'edit'
    end
  end

  def destroy
    @installation = @dossier.installations.find(params[:id])
    @installation.destroy
    redirect_to dossier_installations_path, :notice => "installation détruite !"
  end

  private
  def load_dossier
    @dossier = Dossier.find(params[:dossier_id])
  end

end
