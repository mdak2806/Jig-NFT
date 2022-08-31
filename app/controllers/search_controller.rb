class SearchController < ApplicationController
  def index
    # raise 'hell'
      search = "%" + params[:search] + "%"
      @works = Work.where("name ILIKE ? OR description ILIKE ? OR artist ILIKE ?", search, search, search)
      
  end


end
