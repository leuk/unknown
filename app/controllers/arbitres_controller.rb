class ArbitresController < ApplicationController
  def index
    @arbitres = Arbitre.all
  end
  
  def show
    @arbitre = Arbitre.find(params[:id])
  end
  
  def new
    @arbitre = Arbitre.new
  end
  
  def create
    @arbitre = Arbitre.new(params[:arbitre])
    if @arbitre.save
      flash[:notice] = "Successfully created arbitre."
      redirect_to @arbitre
    else
      render :action => 'new'
    end
  end
  
  def edit
    @arbitre = Arbitre.find(params[:id])
  end
  
  def update
    @arbitre = Arbitre.find(params[:id])
    if @arbitre.update_attributes(params[:arbitre])
      flash[:notice] = "Successfully updated arbitre."
      redirect_to @arbitre
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @arbitre = Arbitre.find(params[:id])
    @arbitre.destroy
    flash[:notice] = "Successfully destroyed arbitre."
    redirect_to arbitres_url
  end
end
