class PagesController < ApplicationController
  def home

  end
  def index
  # below used to extract the search term input on home page and save it as a global variable to be used to in the search controller
    if params[:search]
      @search_term = params[:search]
      @works = @works.search_by(@search_term)
    end
  end

  def faq
  end

  private
end
