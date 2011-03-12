class ParcellesController < ApplicationController
  def index
    @parcelles = Parcelle.all
  end

  def show
    @parcelle = Parcelle.find(params[:id])
  end

  def new
    @parcelle = Parcelle.new
  end

  def create
    @parcelle = Parcelle.new(params[:parcelle])
    if @parcelle.save
      redirect_to @parcelle, :notice => "Successfully created parcelle."
    else
      render :action => 'new'
    end
  end

  def edit
    @parcelle = Parcelle.find(params[:id])
  end

  def update
    @parcelle = Parcelle.find(params[:id])
    if @parcelle.update_attributes(params[:parcelle])
      redirect_to @parcelle, :notice  => "Successfully updated parcelle."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @parcelle = Parcelle.find(params[:id])
    @parcelle.destroy
    redirect_to parcelles_url, :notice => "Successfully destroyed parcelle."
  end
end
