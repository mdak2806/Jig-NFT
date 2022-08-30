class BidsController < ApplicationController
  before_action :check_if_logged_in, except: [:index, :show]
  def new
    @bid = Bid.new
    @work = Work.find params[:id]
    
  end

  def create
   
    @new_bid = Bid.create bid_params
    # CHECK THE BID AGAINST THE CURRENT THRESHOLD TO WIN
    #IF THE CURRENT BID IS LESS THEN, WE POST THE BID AND DATE, HIGHLIGHT THE BID IS TOO LOW
    if @new_bid.currency != @new_bid.work.currency
      flash[:currency_message] = "Invalid Currency please use #{@new_bid.work.currency}"
      redirect_to work_path(params[:bid][:work_id])
     
    end
    
    if  @new_bid.price >= @new_bid.work.price*1.1
      #transfer ownship
      puts "The bid happened"
      @new_bid.work.user_id = @current_user.id
      @new_bid.work.save
      flash[:win_message] = "Congrautions #{@current_user.name} you are now the new owner of #{@new_bid.work.name}!"
      
    else                     
      #comment bid fail 
      puts 'Bid failed'
      flash[:bid_message] = 'Unfortunately the bid was unsuccessful'
    end
    #ELSE IF BID IS HIGHER THEN CURRENT THRESHOLD THEN TRANSFER OF OWNERSHIP

    #TRANSFER OWNERSHIP

    redirect_to work_path(params[:bid][:work_id])
    # @bids = Bid.new bids_params
    # @bids.user_id = @current_user.id
    # @bids.save
    # # @work = Work.find(params[:id])
    # # @bid = @work.bids.new bid_params

    # # respond_to do |format|
      # if @bids.persisted?
      #   redirect_to works_path
      #   format.html {redirect_to @work, notice: 'Bid was suceesfully submitted'}
      # else 
      #   render :new
      # end
    
  end


  def show
    @bid = Bid.find params[:id]
  end

  def edit
  end

  def update
  end

  def destroy
  end
  private
  # Need to add artist_id and parent_id
  def bid_params
  params.require(:bid).permit(:price, :currency, :blockchain, :user_id, :work_id, :date)
  end
end
