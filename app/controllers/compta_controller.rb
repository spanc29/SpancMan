class ComptaController < ApplicationController
  before_filter :load_dossier
  set_tab :compta

  def index
    @compta = @dossier.comptas.all
  end

  def show
    @compta = @dossier.comptas.find(params[:id])
  end

  def new
    @compta = @dossier.comptas.new
  end

  def create
    @compta = @dossier.comptas.new(params[:compta])
    if @compta.save
      redirect_to @compta, :notice => "Successfully created compta."
    else
      render :action => 'new'
    end
  end

  def edit
    @compta = @dossier.comptas.find(params[:id])
  end

  def update
    @compta = @dossier.comptas.find(params[:id])
    if @compta.update_attributes(params[:compta])
      redirect_to @compta, :notice  => "Successfully updated compta."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @compta = @dossier.comptas.find(params[:id])
    @compta.destroy
    redirect_to compta_url, :notice => "Successfully destroyed compta."
  end

  private
  def load_dossier
    @dossier = Dossier.find(params[:dossier_id])
  end
end
