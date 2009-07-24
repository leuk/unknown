require 'test_helper'

class ArenesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Arene.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Arene.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Arene.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to arene_url(assigns(:arene))
  end
  
  def test_edit
    get :edit, :id => Arene.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Arene.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Arene.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Arene.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Arene.first
    assert_redirected_to arene_url(assigns(:arene))
  end
  
  def test_destroy
    arene = Arene.first
    delete :destroy, :id => arene
    assert_redirected_to arenes_url
    assert !Arene.exists?(arene.id)
  end
end
