class UsersController < ApplicationController
 
 #1. Create
  def new
    @user = User.new
  end

  def create
    @user = User.create user_params
    
    # New addition to save user - come back and do this
    # @user.user_id = @current_user.id
    # @user.save 

    if @user.persisted?
    session[:user_id] = @user.id #login automatically
    redirect_to user_path(@user.id) #go to user profile pages
    else
      render :new
    end
   
    if params[:user][:profile_picture].present?
      # Upload to cloudinary
      response = Cloudinary::Uploader.upload params[:user][:profile_picture]
      @user.profile_picture = response["public_id"]
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
    @user = User.find params[:id]

    if @user.id != @current_user.id
      redirect_to login_path
    end
  end

  def update
    @user = User.find params[:id]

    if @user.id != @current_user.id
      redirect_to login_path
      return
    end

    if @user.update user_params
      redirect_to @user
     else
      render :edit
    end

  end

  # 4. Destroy

  def destroy
    User.destroy params[:id]
    redirect_to sign_up_path
  end

private
def user_params
params.require(:user).permit(:name, :email, :password,:password_confirmation)
end
end
