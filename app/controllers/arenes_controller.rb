class ArenesController < ApplicationController
	
  uses_tiny_mce(:options => AppConfig.default_mce_options, :except => [:index , :destroy])
	
  def index
    @arenes = Arene.all
  end
  
  def show
    @arene = Arene.find(params[:id])
  end
  
  def new
    @arene = Arene.new 
  end
  
  def create
    @arene = Arene.new(params[:arene])
    if @arene.save
      flash[:notice] = "Successfully created arene."
      redirect_to @arene
    else
      render :action => 'new'
    end
  end
  
  def edit
    @arene = Arene.find(params[:id])
  end
  
  def update
    @arene = Arene.find(params[:id])
    if @arene.update_attributes(params[:arene])
      flash[:notice] = "Successfully updated arene."
      redirect_to @arene
    else
      redirect_to :action => 'edit'
    end
  end
  
  def destroy
    @arene = Arene.find(params[:id])
    @arene.destroy
    flash[:notice] = "Successfully destroyed arene."
    redirect_to arenes_path
  end
end
