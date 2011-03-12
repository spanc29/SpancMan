require 'test_helper'

class DossiersControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Dossier.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Dossier.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Dossier.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to dossier_url(assigns(:dossier))
  end

  def test_edit
    get :edit, :id => Dossier.first
    assert_template 'edit'
  end

  def test_update_invalid
    Dossier.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Dossier.first
    assert_template 'edit'
  end

  def test_update_valid
    Dossier.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Dossier.first
    assert_redirected_to dossier_url(assigns(:dossier))
  end

  def test_destroy
    dossier = Dossier.first
    delete :destroy, :id => dossier
    assert_redirected_to dossiers_url
    assert !Dossier.exists?(dossier.id)
  end
end
