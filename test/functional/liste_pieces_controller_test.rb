require 'test_helper'

class ListePiecesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => ListePiece.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    ListePiece.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    ListePiece.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to liste_piece_url(assigns(:liste_piece))
  end

  def test_edit
    get :edit, :id => ListePiece.first
    assert_template 'edit'
  end

  def test_update_invalid
    ListePiece.any_instance.stubs(:valid?).returns(false)
    put :update, :id => ListePiece.first
    assert_template 'edit'
  end

  def test_update_valid
    ListePiece.any_instance.stubs(:valid?).returns(true)
    put :update, :id => ListePiece.first
    assert_redirected_to liste_piece_url(assigns(:liste_piece))
  end

  def test_destroy
    liste_piece = ListePiece.first
    delete :destroy, :id => liste_piece
    assert_redirected_to liste_pieces_url
    assert !ListePiece.exists?(liste_piece.id)
  end
end
