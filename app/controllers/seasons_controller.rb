class SeasonsController < ApplicationController
	
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Controller Specific Filters  
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~	 	
  
  before_filter :set_current_season , :only => 'index'	
  uses_tiny_mce(:options => AppConfig.advanced_mce_options , :except => [:index, :show , :destroy])
  
  def index
  end
  
  def show
    @season = Season.find(params[:id])
  end
  
  def new
    @season = Season.new
  end
  
  def create
    @season = Season.new(params[:season])
    if @season.save
      flash[:notice] = "Successfully created season."
      redirect_to @season
    else
      render :action => 'new'
    end
  end
  
  def edit
    @season = Season.find(params[:id])
  end
  
  def update
    @season = Season.find(params[:id])
    if @season.update_attributes(params[:season])
      flash[:notice] = "Successfully updated season."
      redirect_to @season
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @season = Season.find(params[:id])
    @season.destroy
    flash[:notice] = "Successfully destroyed season."
    redirect_to seasons_url
  end

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#  Private Area
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~	  
	private
		def set_current_season
			#@seasons = Season.all			
			@season = Season.find_by_is_current_season(true)
		end
end
