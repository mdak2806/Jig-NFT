class GenresController < ApplicationController
  def index
    # Shows all Genres
    @genre = Genre.all 
  end

  def show
    # Shows each specific genere and the assoicated work with it
    @genre = Genre.find params[:id]
  end
end
