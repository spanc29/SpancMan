class TermesTerrainsController < ApplicationController
  def index
    @termes_terrains = TermesTerrain.all
  end

  def show
    @termes_terrain = TermesTerrain.find(params[:id])
  end

  def new
    @termes_terrain = TermesTerrain.new
  end

  def create
    @termes_terrain = TermesTerrain.new(params[:termes_terrain])
    if @termes_terrain.save
      redirect_to termes_terrain_url, :notice => "Successfully created termes terrain."
    else
      render :action => 'new'
    end
  end

  def edit
    @termes_terrain = TermesTerrain.find(params[:id])
  end

  def update
    @termes_terrain = TermesTerrain.find(params[:id])
    if @termes_terrain.update_attributes(params[:termes_terrain])
      redirect_to termes_terrain_url, :notice  => "Successfully updated termes terrain."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @termes_terrain = TermesTerrain.find(params[:id])
    @termes_terrain.destroy
    redirect_to termes_terrains_url, :notice => "Successfully destroyed termes terrain."
  end
end
