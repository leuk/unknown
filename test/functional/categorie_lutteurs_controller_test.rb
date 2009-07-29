require 'test_helper'

class CategorieLutteursControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => CategorieLutteur.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    CategorieLutteur.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    CategorieLutteur.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to categorie_lutteur_url(assigns(:categorie_lutteur))
  end
  
  def test_edit
    get :edit, :id => CategorieLutteur.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    CategorieLutteur.any_instance.stubs(:valid?).returns(false)
    put :update, :id => CategorieLutteur.first
    assert_template 'edit'
  end
  
  def test_update_valid
    CategorieLutteur.any_instance.stubs(:valid?).returns(true)
    put :update, :id => CategorieLutteur.first
    assert_redirected_to categorie_lutteur_url(assigns(:categorie_lutteur))
  end
  
  def test_destroy
    categorie_lutteur = CategorieLutteur.first
    delete :destroy, :id => categorie_lutteur
    assert_redirected_to categorie_lutteurs_url
    assert !CategorieLutteur.exists?(categorie_lutteur.id)
  end
end
