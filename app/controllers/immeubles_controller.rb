class ImmeublesController < ApplicationController
  def index
    @immeubles = Immeuble.all
  end

  def show
    @immeuble = Immeuble.find(params[:id])
  end

  def new
    @immeuble = Immeuble.new
  end

  def create
    @immeuble = Immeuble.new(params[:immeuble])
    if @immeuble.save
      redirect_to @immeuble, :notice => "Successfully created immeuble."
    else
      render :action => 'new'
    end
  end

  def edit
    @immeuble = Immeuble.find(params[:id])
  end

  def update
    @immeuble = Immeuble.find(params[:id])
    if @immeuble.update_attributes(params[:immeuble])
      redirect_to @immeuble, :notice  => "Successfully updated immeuble."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @immeuble = Immeuble.find(params[:id])
    @immeuble.destroy
    redirect_to immeubles_url, :notice => "Successfully destroyed immeuble."
  end
end
