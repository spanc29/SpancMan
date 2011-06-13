class RdvsController < ApplicationController
  def index
    @rdvs = Rdv.all
  end

  def show
    @rdv = Rdv.find(params[:id])
  end

  def new
    @rdv = Rdv.new
  end

  def create
    @rdv = Rdv.new(params[:rdv])
    if @rdv.save
      redirect_to @rdv, :notice => "Successfully created rdv."
    else
      render :action => 'new'
    end
  end

  def edit
    @rdv = Rdv.find(params[:id])
  end

  def update
    @rdv = Rdv.find(params[:id])
    if @rdv.update_attributes(params[:rdv])
      redirect_to @rdv, :notice  => "Successfully updated rdv."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @rdv = Rdv.find(params[:id])
    @rdv.destroy
    redirect_to rdvs_url, :notice => "Successfully destroyed rdv."
  end

end
