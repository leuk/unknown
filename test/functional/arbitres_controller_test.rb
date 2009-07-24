require 'test_helper'

class ArbitresControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Arbitre.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Arbitre.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Arbitre.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to arbitre_url(assigns(:arbitre))
  end
  
  def test_edit
    get :edit, :id => Arbitre.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Arbitre.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Arbitre.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Arbitre.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Arbitre.first
    assert_redirected_to arbitre_url(assigns(:arbitre))
  end
  
  def test_destroy
    arbitre = Arbitre.first
    delete :destroy, :id => arbitre
    assert_redirected_to arbitres_url
    assert !Arbitre.exists?(arbitre.id)
  end
end
