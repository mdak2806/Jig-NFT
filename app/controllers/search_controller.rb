class SearchController < ApplicationController
  def index
   
    # Below is defining the term search as a params
      search = "%" + params[:search] + "%"
      # params search is cpmpared to the terms within the different Work within the name, description and artist information
      @works = Work.where("name ILIKE ? OR description ILIKE ? OR artist ILIKE ?", search, search, search)
      
      # these matches are saved in a global variable called @search which is used in the search index to present the relevant work
      @search = params[:search]
  end


end
