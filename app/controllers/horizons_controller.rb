class HorizonsController < ApplicationController
  def index
    @horizons = Horizon.all
  end

  def show
    @horizon = Horizon.find(params[:id])
  end

  def new
    @horizon = Horizon.new
  end

  def create
    @horizon = Horizon.new(params[:horizon])
    if @horizon.save
      redirect_to @horizon, :notice => "Successfully created horizon."
    else
      render :action => 'new'
    end
  end

  def edit
    @horizon = Horizon.find(params[:id])
  end

  def update
    @horizon = Horizon.find(params[:id])
    if @horizon.update_attributes(params[:horizon])
      redirect_to @horizon, :notice  => "Successfully updated horizon."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @horizon = Horizon.find(params[:id])
    @horizon.destroy
    redirect_to horizons_url, :notice => "Successfully destroyed horizon."
  end
end
