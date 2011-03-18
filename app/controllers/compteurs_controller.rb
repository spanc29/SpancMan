class CompteursController < ApplicationController
  before_filter :load_immeuble, :except => :destroy

  def create
    @compteur = @immeuble.comments.new(params[:comment])
    if @compteur.save
      respond_to do |format|
        format.html { redirect_to @immeuble, :notice => "merci pour le commentaire"}
        format.js
      end
    else
      respond_to do |format|
        format.html { redirect_to @immeuble, :alert =>'impossible de poster un commentaire'}
        format.js {render 'fail_create.js.erb'}
      end
    end
  end

  def destroy
    @comment = @article.comments.find(params[:id])
    @comment.destroy
    respond_to do |format|
      format.html {redirect_to @immeuble, :notice => 'commentaire effacé'}
      format.js
    end
  end

private
  def load_immeuble
    @immeuble = @dossier.immeuble.find(params[:immeuble_id])
  end
end
