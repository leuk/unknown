require 'test_helper'

class PromoteursControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Promoteur.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Promoteur.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Promoteur.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to promoteur_url(assigns(:promoteur))
  end
  
  def test_edit
    get :edit, :id => Promoteur.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Promoteur.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Promoteur.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Promoteur.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Promoteur.first
    assert_redirected_to promoteur_url(assigns(:promoteur))
  end
  
  def test_destroy
    promoteur = Promoteur.first
    delete :destroy, :id => promoteur
    assert_redirected_to promoteurs_url
    assert !Promoteur.exists?(promoteur.id)
  end
end
