class PagesController < ApplicationController
  def home

  end
  def index
    # @works = Work.find params[:search]
    if params[:search]
      @search_term = params[:search]
      @works = @works.search_by(@search_term)
    end
  end

  def faq
  end

  private
end
