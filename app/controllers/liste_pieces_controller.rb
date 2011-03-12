class ListePiecesController < ApplicationController
  def index
    @liste_pieces = ListePiece.all
  end

  def show
    @liste_piece = ListePiece.find(params[:id])
  end

  def new
    @liste_piece = ListePiece.new
  end

  def create
    @liste_piece = ListePiece.new(params[:liste_piece])
    if @liste_piece.save
      redirect_to @liste_piece, :notice => "Successfully created liste piece."
    else
      render :action => 'new'
    end
  end

  def edit
    @liste_piece = ListePiece.find(params[:id])
  end

  def update
    @liste_piece = ListePiece.find(params[:id])
    if @liste_piece.update_attributes(params[:liste_piece])
      redirect_to @liste_piece, :notice  => "Successfully updated liste piece."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @liste_piece = ListePiece.find(params[:id])
    @liste_piece.destroy
    redirect_to liste_pieces_url, :notice => "Successfully destroyed liste piece."
  end
end
