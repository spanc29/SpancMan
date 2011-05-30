class EntretiensController < ApplicationController
  before_filter :load_dossier
  set_tab :entretien

  def index
    @entretiens = @dossier.entretiens.all
  end

  def show
    @entretien = @dossier.entretiens.find(params[:id])
  end

  def new
    @entretien = @dossier.entretiens.new
  end

  def create
    @entretien = @dossier.entretiens.new(params[:entretien])
    if @entretien.save
      redirect_to dossier.entretiens_url, :notice => "Successfully created entretien."
    else
      render :action => 'new'
    end
  end

  def edit
    @entretien = @dossier.entretiens.find(params[:id])
  end

  def update
    @entretien = @dossier.entretiens.find(params[:id])
    if @entretien.update_attributes(params[:entretien])
      redirect_to @entretien, :notice  => "Successfully updated entretien."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @entretien = @dossier.entretiens.find(params[:id])
    @entretien.destroy
    redirect_to dossier.entretiens_url, :notice => "Successfully destroyed entretien."
  end

private
  def load_dossier
    @dossier = Dossier.find(params[:dossier_id])
  end

end
