class DossiersController < ApplicationController
  def index

    @search = Dossier.search(params[:search])
    @dossiers = @search.all


  end

  def show
    @dossier = Dossier.find(params[:id])
    @list = Liste.find_by_id(@dossier.secteur)
  end

  def new
    @dossier = Dossier.new
  end

  def create
    @dossier = Dossier.new(params[:dossier])
    if @dossier.save
      redirect_to @dossier, :notice => "Successfully created dossier."
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
      redirect_to @dossier, :notice  => "Successfully updated dossier."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @dossier = Dossier.find(params[:id])
    @dossier.destroy
    redirect_to dossiers_url, :notice => "Successfully destroyed dossier."
  end
end