class UsersController < ApplicationController
 
 #1. Create
  def new
    @user = User.new
  end

  def create
    @user = User.create user_params 

    if @user.persisted?
    session[:user_id] = @user.id #login automatically
    redirect_to user_path(@user.id) #go to user profile pages
    else
      render :new
    end

  end

  #2. Read

  def index
    @user = User.all
    
  end

  def show
    @user = User.find params[:id]
    @work = Work.all

  end

  #3 Update

  def edit
  end

  def update
  end

  # 4. Destroy

  def destroy
  end

private
def user_params
params.require(:user).permit(:name, :email, :password,:password_confirmation)
end
end
