class GroupesController < ApplicationController
  def index
    @groupes = Groupe.all
  end

  def show
    @groupe = Groupe.find(params[:id])
  end

  def new
    @groupe = Groupe.new
  end

  def create
    @groupe = Groupe.new(params[:groupe])
    if @groupe.save
      redirect_to @groupe, :notice => "Successfully created groupe."
    else
      render :action => 'new'
    end
  end

  def edit
    @groupe = Groupe.find(params[:id])
  end

  def update
    @groupe = Groupe.find(params[:id])
    if @groupe.update_attributes(params[:groupe])
      redirect_to @groupe, :notice  => "Successfully updated groupe."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @groupe = Groupe.find(params[:id])
    @groupe.destroy
    redirect_to groupes_url, :notice => "Successfully destroyed groupe."
  end
end
