class CompteursController < ApplicationController
  def index
    @compteurs = Compteur.all
  end

  def show
    @compteur = Compteur.find(params[:id])
  end

  def new
    @compteur = Compteur.new
  end

  def create
    @compteur = Compteur.new(params[:compteur])
    if @compteur.save
      redirect_to @compteur, :notice => "Successfully created compteur."
    else
      render :action => 'new'
    end
  end

  def edit
    @compteur = Compteur.find(params[:id])
  end

  def update
    @compteur = Compteur.find(params[:id])
    if @compteur.update_attributes(params[:compteur])
      redirect_to @compteur, :notice  => "Successfully updated compteur."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @compteur = Compteur.find(params[:id])
    @compteur.destroy
    redirect_to compteurs_url, :notice => "Successfully destroyed compteur."
  end
end
