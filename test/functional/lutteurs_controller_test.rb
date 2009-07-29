require 'test_helper'

class LutteursControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Lutteur.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Lutteur.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Lutteur.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to lutteur_url(assigns(:lutteur))
  end
  
  def test_edit
    get :edit, :id => Lutteur.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Lutteur.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Lutteur.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Lutteur.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Lutteur.first
    assert_redirected_to lutteur_url(assigns(:lutteur))
  end
  
  def test_destroy
    lutteur = Lutteur.first
    delete :destroy, :id => lutteur
    assert_redirected_to lutteurs_url
    assert !Lutteur.exists?(lutteur.id)
  end
end
