require 'test_helper'

class CompteursControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Compteur.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Compteur.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Compteur.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to compteur_url(assigns(:compteur))
  end

  def test_edit
    get :edit, :id => Compteur.first
    assert_template 'edit'
  end

  def test_update_invalid
    Compteur.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Compteur.first
    assert_template 'edit'
  end

  def test_update_valid
    Compteur.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Compteur.first
    assert_redirected_to compteur_url(assigns(:compteur))
  end

  def test_destroy
    compteur = Compteur.first
    delete :destroy, :id => compteur
    assert_redirected_to compteurs_url
    assert !Compteur.exists?(compteur.id)
  end
end
