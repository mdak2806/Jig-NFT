class WorksController < ApplicationController
  #Creates an exception to only allow certain users logged in to have control of create, new, edit and delete functions 
  before_action :check_if_logged_in, except: [:index, :show]

  # Create
  def new
    # Form to create new Work, defined genre also
    @work = Work.new
    @genre = Genre.all
  end

  def create
    # Allows users to create bids on show page and also work
    @bid = Bid.new @bid_params
    @work = Work.new work_params
    @work.user_id = @current_user.id
    
    if params[:work][:picture].present?
      # Upload to cloudinary
      response = Cloudinary::Uploader.upload params[:work][:picture]
      @work.picture = response["public_id"]
    end
   
    @work.save

    # If work is created with the above form, the below variable genres and properties are also saved as new with the same assoications
    if @work.persisted?
      # Associate the genre with the work created
      # @genre = Genre.find params[:genre][:ids]
      # @work.genres << Genre.find params[:genre_ids]
      if @work.genres.present?
      @work.genres << Genre.find(params[:genre_ids])
      end
      
      # New property variable is created using the input from the form
      @property = Property.create!(

        trait: params[:trait],
        trait_value: params[:trait_value],
        percentage: params[:percentage],
        rairty: params[:rairty],
        work_id: @work.id
      )
      @property1 = Property.create!(
        trait: params[:trait1],
        trait_value: params[:trait_value1],
        percentage: params[:percentage1],
        rairty: params[:rairty],
        work_id: @work.id
      )

      redirect_to works_path
    else
      render :new
    end

  end #create
  
  #Read

  def index
  
    # Below is a if and else statement that checks if the filter with the params :rairty or :blockchain are being used. If so the index page is filter to show Work with these specific params
    if params[:rairty]
      @trait = params[:rairty]
      @works = Work.search_by(@trait)
    elsif params[:blockchain]
      @currency = params[:blockchain]
      @works = Work.search_currency_by(@currency)
    else
      @works = Work.all
    end 
  end

  # Show page for each index, specific variables defined used for each Work including genre, properties, bid etc. 
  def show
    @work = Work.find params[:id]
    @property = Property.all
    @genre = Genre.all
    @bid = Bid.new

  end

  # Update

  # Edit and update pages uses the work and ensures only the current user with the same user ID can edit and make changed

  def edit
    @work = Work.find params[:id]
    
    if @work.user_id != @current_user.id
      redirect_to login_path
    end
  end

  def update
    @work = Work.find params[:id]
    
    if @work.user_id != @current_user.id
      redirect_to login_path
      return
    end

    if @work.update work_params
      redirect_to @work
     else
      render :edit
    end

  end

  # Destroy

  def destroy
    Work.destroy params[:id]
    redirect_to works_path
  end

  private
  # Need to add artist_id and parent_id
  def work_params
    params.require(:work).permit(:name, :description, :artist, :token_id, :blockchain, :price, :currency, :picture, :user_id, :property_id)
  end
end
