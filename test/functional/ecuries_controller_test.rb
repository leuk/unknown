require 'test_helper'

class EcuriesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Ecury.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Ecury.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Ecury.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to ecury_url(assigns(:ecury))
  end
  
  def test_edit
    get :edit, :id => Ecury.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Ecury.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Ecury.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Ecury.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Ecury.first
    assert_redirected_to ecury_url(assigns(:ecury))
  end
  
  def test_destroy
    ecury = Ecury.first
    delete :destroy, :id => ecury
    assert_redirected_to ecuries_url
    assert !Ecury.exists?(ecury.id)
  end
end
