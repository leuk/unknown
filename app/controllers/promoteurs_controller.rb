class PromoteursController < ApplicationController

  uses_tiny_mce(:options => AppConfig.advanced_mce_options , :except => [:index, :show , :destroy])
  
  def index
    @promoteurs = Promoteur.all
  end
  
  def show
    @promoteur = Promoteur.find(params[:id])
  end
  
  def new
    @promoteur = Promoteur.new
  end
  
  def create
    @promoteur = Promoteur.new(params[:promoteur])
    if @promoteur.save
      flash[:notice] = "Successfully created promoteur."
      redirect_to @promoteur
    else
      render :action => 'new'
    end
  end
  
  def edit
    @promoteur = Promoteur.find(params[:id])
  end
  
  def update
    @promoteur = Promoteur.find(params[:id])
    if @promoteur.update_attributes(params[:promoteur])
      flash[:notice] = "Successfully updated promoteur."
      redirect_to @promoteur
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @promoteur = Promoteur.find(params[:id])
    @promoteur.destroy
    flash[:notice] = "Successfully destroyed promoteur."
    redirect_to promoteurs_url
  end
end
