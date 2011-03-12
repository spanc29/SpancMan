require 'test_helper'

class ParcellesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Parcelle.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Parcelle.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Parcelle.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to parcelle_url(assigns(:parcelle))
  end

  def test_edit
    get :edit, :id => Parcelle.first
    assert_template 'edit'
  end

  def test_update_invalid
    Parcelle.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Parcelle.first
    assert_template 'edit'
  end

  def test_update_valid
    Parcelle.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Parcelle.first
    assert_redirected_to parcelle_url(assigns(:parcelle))
  end

  def test_destroy
    parcelle = Parcelle.first
    delete :destroy, :id => parcelle
    assert_redirected_to parcelles_url
    assert !Parcelle.exists?(parcelle.id)
  end
end
