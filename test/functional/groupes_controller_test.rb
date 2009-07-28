require 'test_helper'

class GroupesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Groupe.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Groupe.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Groupe.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to groupe_url(assigns(:groupe))
  end
  
  def test_edit
    get :edit, :id => Groupe.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Groupe.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Groupe.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Groupe.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Groupe.first
    assert_redirected_to groupe_url(assigns(:groupe))
  end
  
  def test_destroy
    groupe = Groupe.first
    delete :destroy, :id => groupe
    assert_redirected_to groupes_url
    assert !Groupe.exists?(groupe.id)
  end
end
