class LutteursController < ApplicationController
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#  Controller Filters
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~	  
  before_filter :load_ecurie , :except => [:edit , :destroy]
  before_filter :load_categories , :except => [:index, :show , :destroy]
# TinyMce Initialization  
  uses_tiny_mce(:options => AppConfig.advanced_mce_options , :except => [:index, :show , :destroy])	
  
  def index
    @lutteurs = @ecury.lutteurs
  end
  
  def show
    @lutteur = Lutteur.find(params[:id])
  end
  
  def new
    @lutteur = @ecury.lutteurs.build
  end
  
  def create
    @lutteur = @ecury.lutteurs.build(params[:lutteur])
    if @lutteur.save
      flash[:notice] = "Successfully created lutteur."
      redirect_to ecury_lutteur_path(@ecury , @lutteur)
    else
      render :action => 'new'
    end
  end
  
  def edit
    @lutteur = Lutteur.find(params[:id])
  end
  
  def update
    @lutteur = Lutteur.find(params[:id])
    if @lutteur.update_attributes(params[:lutteur])
      flash[:notice] = "Successfully updated lutteur."
      redirect_to ecury_lutteur_path(@ecury , @lutteur)
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @lutteur = Lutteur.find(params[:id])
    @lutteur.destroy
    flash[:notice] = "Successfully destroyed lutteur."
    redirect_to ecury_lutteurs_path(@lutteur.ecury_id)
  end
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#  Private Area
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~	  
  private
  		def load_ecurie
  			@ecury = Ecury.find(params[:ecury_id])
  		end  
  		
  		def load_categories
  			@categorie_lutteurs = CategorieLutteur.all
  		end
end
