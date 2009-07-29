class CategorieLutteursController < ApplicationController
  def index
    @categorie_lutteurs = CategorieLutteur.all
  end
  
  def show
    @categorie_lutteur = CategorieLutteur.find(params[:id])
  end
  
  def new
    @categorie_lutteur = CategorieLutteur.new
  end
  
  def create
    @categorie_lutteur = CategorieLutteur.new(params[:categorie_lutteur])
    if @categorie_lutteur.save
      flash[:notice] = "Successfully created categorie lutteur."
      redirect_to @categorie_lutteur
    else
      render :action => 'new'
    end
  end
  
  def edit
    @categorie_lutteur = CategorieLutteur.find(params[:id])
  end
  
  def update
    @categorie_lutteur = CategorieLutteur.find(params[:id])
    if @categorie_lutteur.update_attributes(params[:categorie_lutteur])
      flash[:notice] = "Successfully updated categorie lutteur."
      redirect_to @categorie_lutteur
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @categorie_lutteur = CategorieLutteur.find(params[:id])
    @categorie_lutteur.destroy
    flash[:notice] = "Successfully destroyed categorie lutteur."
    redirect_to categorie_lutteurs_url
  end
end
