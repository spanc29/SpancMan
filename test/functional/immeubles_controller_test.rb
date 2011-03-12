require 'test_helper'

class ImmeublesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Immeuble.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Immeuble.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Immeuble.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to immeuble_url(assigns(:immeuble))
  end

  def test_edit
    get :edit, :id => Immeuble.first
    assert_template 'edit'
  end

  def test_update_invalid
    Immeuble.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Immeuble.first
    assert_template 'edit'
  end

  def test_update_valid
    Immeuble.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Immeuble.first
    assert_redirected_to immeuble_url(assigns(:immeuble))
  end

  def test_destroy
    immeuble = Immeuble.first
    delete :destroy, :id => immeuble
    assert_redirected_to immeubles_url
    assert !Immeuble.exists?(immeuble.id)
  end
end
