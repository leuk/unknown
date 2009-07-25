class UsersController < ApplicationController
  def index
    @users = User.all
  end
  
  def show
    @user = current_user
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:notice] = "Successfully created users."
      redirect_to @user
    else
      render :action => 'new'
    end
  end
  
  def edit
    @user = current_user
  end
  
  def update
    @user = current_user # makes our views "cleaner" and more consistent
    if @user.update_attributes(params[:user])
      flash[:notice] = "Account updated!"
      redirect_to @user
    else
      render :action => :edit
    end
  end
  
  def destroy
    @user = current_user
    @user.destroy
    flash[:notice] = "Successfully destroyed users."
    redirect_to users_url
  end
end
