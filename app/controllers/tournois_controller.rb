class TournoisController < ApplicationController

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#  Controller Filters
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~	  
  before_filter :load_types_and_promoteurs_and_scoped_season , :except => [:index, :show , :destroy]		
  
  uses_tiny_mce(:options => AppConfig.advanced_mce_options , :except => [:index, :show , :destroy])
  
  def index
    @tournois = Tournoi.all
  end
  
  def show
    @tournoi = Tournoi.find(params[:id])
  end
  
  def new
    @tournoi = @season.tournois.build
  end
  
  def create
    @tournoi = @season.tournois.build(params[:tournoi])
    if @tournoi.save
      flash[:notice] = "Successfully created tournoi."
      redirect_to season_tournoi_path(@season , @tournoi)
    else
      render :action => 'new'
    end
  end
  
  def edit
    @tournoi = Tournoi.find(params[:id])
  end
  
  def update
    @tournoi = Tournoi.find(params[:id])
    if @tournoi.update_attributes(params[:tournoi])
      flash[:notice] = "Successfully updated tournoi."
      redirect_to season_tournoi_path(@season , @tournoi)
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @tournoi = Tournoi.find(params[:id])
    @tournoi.destroy
    flash[:notice] = "Successfully destroyed tournoi."
          redirect_to season_path(@tournoi.season)
  end
  
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#  Private Area
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~	  
	private
		def load_types_and_promoteurs_and_scoped_season
			@types = Type.all
			@promoteurs = Promoteur.all			
  			@season  = Season.find(params[:season_id])
		end
end
