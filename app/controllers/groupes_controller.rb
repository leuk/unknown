class GroupesController < ApplicationController
	
  before_filter :load_season_tournoi	
	
  uses_tiny_mce(:options => AppConfig.advanced_mce_options , :except => [:index, :show , :destroy])	
  
  def index
    @groupes = @tournoi.groupes
  end
  
  def show
    @groupe = @tournoi.groupes.find(params[:id])
  end
  
  def new
    @groupe = @tournoi.groupes.build
  end
  
  def create
    @groupe = @tournoi.groupes.build(params[:groupe])
    if @groupe.save
      flash[:notice] = "Successfully created groupe."
      redirect_to season_tournoi_groupe_path(@season , @tournoi , @groupe)
    else
      render :action => 'new'
    end
  end
  
  def edit
    @groupe = Groupe.find(params[:id])
  end
  
  def update
    @groupe = Groupe.find(params[:id])
    if @groupe.update_attributes(params[:groupe])
      flash[:notice] = "Successfully updated groupe."
      redirect_to season_tournoi_groupe_path(@season , @tournoi , @groupe)
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @groupe = Groupe.find(params[:id])
    @groupe.destroy
    flash[:notice] = "Successfully destroyed groupe."
    redirect_to season_tournoi_groupes_path(@season , @tournoi)
  end

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#  Private Area
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~	  
  private
  		def load_season_tournoi
  			@season  = Season.find(params[:season_id])
  			@tournoi = @season.tournois.find(params[:tournoi_id])
  		end
end
