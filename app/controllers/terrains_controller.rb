class TerrainsController < ApplicationController
  before_filter :load_dossier
  set_tab :terrain

  def index
    @terrains = @dossier.terrains.all
  end

  def show
    @terrain = @dossier.terrains.find(params[:id])
  end

  def new
    @terrain = @dossier.terrains.new
  end

  def create
    @terrain = @dossier.terrains.new(params[:terrain])
    if @terrain.save
      redirect_to @terrain, :notice => "Successfully created terrain."
    else
      render :action => 'new'
    end
  end

  def edit
    @terrain = @dossier.terrains.find(params[:id])
  end

  def update
    @terrain = @dossier.terrains.find(params[:id])
    if @terrain.update_attributes(params[:terrain])
      redirect_to @terrain, :notice  => "Successfully updated terrain."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @terrain = @dossier.terrains.find(params[:id])
    @terrain.destroy
    redirect_to terrains_url, :notice => "Successfully destroyed terrain."
  end

private
  def load_dossier
    @dossier = Dossier.find(params[:dossier_id])
  end
end
