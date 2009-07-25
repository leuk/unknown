class CombatTypesController < ApplicationController
  def index
    @combat_types = CombatType.all
  end
  
  def show
    @combat_type = CombatType.find(params[:id])
  end
  
  def new
    @combat_type = CombatType.new
  end
  
  def create
    @combat_type = CombatType.new(params[:combat_type])
    if @combat_type.save
      flash[:notice] = "Successfully created combat type."
      redirect_to @combat_type
    else
      render :action => 'new'
    end
  end
  
  def edit
    @combat_type = CombatType.find(params[:id])
  end
  
  def update
    @combat_type = CombatType.find(params[:id])
    if @combat_type.update_attributes(params[:combat_type])
      flash[:notice] = "Successfully updated combat type."
      redirect_to @combat_type
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @combat_type = CombatType.find(params[:id])
    @combat_type.destroy
    flash[:notice] = "Successfully destroyed combat type."
    redirect_to combat_types_url
  end
end
