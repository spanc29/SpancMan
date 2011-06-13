class ListesController < ApplicationController

  def index
    @search = Liste.search(params[:search])
    @listes = @search.all
    @liste_by_partie = @listes.group_by{|t| t.partie}
  end

  def new
    @liste = Liste.new
  end

  def create
    @liste = Liste.new(params[:liste])
    if @liste.save
      redirect_to listes_url, :notice => "Entrée correctement créée"
    else
      render :action => 'new'
    end
  end

  def edit
    @liste = Liste.find(params[:id])
  end

  def update
    @liste = Liste.find(params[:id])
    if @liste.update_attributes(params[:liste])
      redirect_to listes_url, :notice  => "Entrée mise à jour"
    else
      render :action => 'edit'
    end
  end

  def destroy
    @liste = Liste.find(params[:id])
    @liste.destroy
    redirect_to listes_url, :notice => "entrée détruite définitivement."
  end
end
