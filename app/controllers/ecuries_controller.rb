class EcuriesController < ApplicationController
	
  uses_tiny_mce(:options => AppConfig.advanced_mce_options , :except => [:index, :show , :destroy])
  	
  def index
    @ecuries = Ecury.all
  end
  
  def show
    @ecury = Ecury.find(params[:id])
    @lutteurs = @ecury.lutteurs
  end
  
  def new
    @ecury = Ecury.new
  end
  
  def create
    @ecury = Ecury.new(params[:ecury])
    if @ecury.save
      flash[:notice] = "Successfully created ecury."
      redirect_to @ecury
    else
      render :action => 'new'
    end
  end
  
  def edit
    @ecury = Ecury.find(params[:id])
  end
  
  def update
    @ecury = Ecury.find(params[:id])
    if @ecury.update_attributes(params[:ecury])
      flash[:notice] = "Successfully updated ecury."
      redirect_to @ecury
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @ecury = Ecury.find(params[:id])
    @ecury.destroy
    flash[:notice] = "Successfully destroyed ecury."
    redirect_to ecuries_url
  end
end
