require 'test_helper'

class ListesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Liste.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Liste.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to listes_url
  end

  def test_edit
    get :edit, :id => Liste.first
    assert_template 'edit'
  end

  def test_update_invalid
    Liste.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Liste.first
    assert_template 'edit'
  end

  def test_update_valid
    Liste.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Liste.first
    assert_redirected_to listes_url
  end
end
