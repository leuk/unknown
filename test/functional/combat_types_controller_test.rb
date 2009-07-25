require 'test_helper'

class CombatTypesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => CombatType.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    CombatType.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    CombatType.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to combat_type_url(assigns(:combat_type))
  end
  
  def test_edit
    get :edit, :id => CombatType.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    CombatType.any_instance.stubs(:valid?).returns(false)
    put :update, :id => CombatType.first
    assert_template 'edit'
  end
  
  def test_update_valid
    CombatType.any_instance.stubs(:valid?).returns(true)
    put :update, :id => CombatType.first
    assert_redirected_to combat_type_url(assigns(:combat_type))
  end
  
  def test_destroy
    combat_type = CombatType.first
    delete :destroy, :id => combat_type
    assert_redirected_to combat_types_url
    assert !CombatType.exists?(combat_type.id)
  end
end
