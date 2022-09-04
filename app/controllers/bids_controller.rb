class BidsController < ApplicationController
  # Ensures only logged in users can make bids
  before_action :check_if_logged_in, except: [:index, :show]

  # 1. Create a new Bid and associated work ID
  def new
    @bid = Bid.new
    @work = Work.find params[:id]
    
  end

  def create

    # Save new bid in a global variable to be used
    @new_bid = Bid.new bid_params
    
    # Below are variou if statements to check that users input a valid currency and a valid price. If this is not satisfied a specific error message is presented and users are returned to the Work Show page. 
    
    # Bid is not nil or a zero value
    if @new_bid.price.nil? || @new_bid.price.zero?  
      flash[:bid_message] = 'Unfortunately the bid requires a valid price greater than Zero'
      redirect_to work_path(params[:bid][:work_id])
      return
    end
    
    # currency is not nill
    if @new_bid.currency.nil? 
        flash[:bid_message] = 'Unfortunately the bid requires a valid price and currency'
        redirect_to work_path(params[:bid][:work_id])
      return
    end

    # currency match check
    if @new_bid.currency != @new_bid.work.currency
      flash[:currency_message] = "Invalid Currency please use #{@new_bid.work.currency}"
      redirect_to work_path(params[:bid][:work_id])
      return
    end
    
    
    # CHECK THE BID AGAINST THE CURRENT THRESHOLD TO WIN
    #IF THE CURRENT BID IS LESS THEN, WE POST THE BID AND DATE, HIGHLIGHT THE BID IS TOO LOW

    if  @new_bid.price >= @new_bid.work.price*1.1
      #transfer ownship
      @new_bid.user_id = @current_user.id
      @new_bid.save
      puts "The bid happened"
     
      flash[:win_message] = "Congrautions #{@current_user.name} you are now the new owner of #{@new_bid.work.name}!"
      
      
    else                     
      #comment bid fail 
      puts 'Bid failed'
      flash[:bid_message] = 'Unfortunately the bid was unsuccessful'
    end
    #ELSE IF BID IS HIGHER THEN CURRENT THRESHOLD THEN TRANSFER OF OWNERSHIP

    # @new_bid.save
    #TRANSFER OWNERSHIP

    redirect_to work_path(params[:bid][:work_id])

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
