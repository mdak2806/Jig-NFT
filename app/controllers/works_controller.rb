class WorksController < ApplicationController
  
  before_action :check_if_logged_in, except: [:index, :show]
  # Create
  def new

    @work = Work.new
    @genre = Genre.all
  end

 

  def create
    @bid = Bid.new @bid_params
    @work = Work.new work_params
    @work.user_id = @current_user.id
    
    if params[:work][:picture].present?
      # Upload to cloudinary
      response = Cloudinary::Uploader.upload params[:work][:picture]
      @work.picture = response["public_id"]
    end
   
    @work.save

    if @work.persisted?
      # Associate the genre with the work created
      # @genre = Genre.find params[:genre][:ids]
      # @work.genres << Genre.find params[:genre_ids]
      if @work.genres.present?
      @work.genres << Genre.find(params[:genre_ids])
      end

      @property = Property.create!(

        trait: params[:trait],
        trait_value: params[:trait_value],
        percentage: params[:percentage],
        work_id: @work.id
      )
      @property1 = Property.create!(
        trait: params[:trait1],
        trait_value: params[:trait_value1],
        percentage: params[:percentage1],
        work_id: @work.id
      )

      redirect_to works_path
    else
      render :new
    end

  end #create
  #Read

  def index
  
    # Add search bar to works page
    ###########################################################################
    # search = {"%" + params[:trait] + "%"}
    # @trait_value = Property.where("trait ILIKE ? OR price ILIKE ? ", search, search)
   
    if params[:trait]
      @trait = params[:trait]
      @works = Work.search_by(@trait)
    else
      @works = Work.all
    end 
    ###########################################################################
   
    # if params[:trait].present? 
    #   @works = @works.where("trait like ?", "%#{params[:trait]}%")
    # else
    #   @works = Work.all
    # end
    
  end

  def show
    @work = Work.find params[:id]
    @property = Property.all
    @genre = Genre.all
    @bid = Bid.new

  end

  # Update

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
