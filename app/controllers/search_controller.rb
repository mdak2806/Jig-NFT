class SearchController < ApplicationController
  def index
    # raise 'hell'
      @works = Work.where("name Like?", "%" + params[:q] + "%")
      
  end


end
