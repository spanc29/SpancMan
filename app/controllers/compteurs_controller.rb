class CompteursController < ApplicationController
  before_filter :load_immeuble, :except => :destroy

  def create
    @compteur = @immeuble.compteurs.new(params[:comment])
    if @compteur.save
      respond_to do |format|
        format.html { redirect_to @immeuble, :notice => "merci pour le commentaire"}
      end
    else
      respond_to do |format|
        format.html { redirect_to @immeuble, :alert =>'impossible de poster un commentaire'}
      end
    end
  end

  def destroy
    @compteur = @immeuble.compteurs.find(params[:id])
    @comment.destroy
    respond_to do |format|
      format.html {redirect_to @immeuble, :notice => 'commentaire effacé'}
    end
  end

private
  def load_immeuble
    @immeuble = @dossier.immeuble.find(params[:immeuble_id])
  end
end
