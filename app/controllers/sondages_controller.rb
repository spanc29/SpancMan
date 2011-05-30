class SondagesController < ApplicationController
  def index
    @sondages = Sondage.all
  end

  def show
    @sondage = Sondage.find(params[:id])
  end

  def new
    @sondage = Sondage.new
  end

  def create
    @sondage = Sondage.new(params[:sondage])
    if @sondage.save
      redirect_to @sondage, :notice => "Successfully created sondage."
    else
      render :action => 'new'
    end
  end

  def edit
    @sondage = Sondage.find(params[:id])
  end

  def update
    @sondage = Sondage.find(params[:id])
    if @sondage.update_attributes(params[:sondage])
      redirect_to @sondage, :notice  => "Successfully updated sondage."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @sondage = Sondage.find(params[:id])
    @sondage.destroy
    redirect_to sondages_url, :notice => "Successfully destroyed sondage."
  end
end
