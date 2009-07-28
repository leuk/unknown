require 'test_helper'

class TournoisControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Tournoi.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Tournoi.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Tournoi.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to tournoi_url(assigns(:tournoi))
  end
  
  def test_edit
    get :edit, :id => Tournoi.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Tournoi.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Tournoi.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Tournoi.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Tournoi.first
    assert_redirected_to tournoi_url(assigns(:tournoi))
  end
  
  def test_destroy
    tournoi = Tournoi.first
    delete :destroy, :id => tournoi
    assert_redirected_to tournois_url
    assert !Tournoi.exists?(tournoi.id)
  end
end
