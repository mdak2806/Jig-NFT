class GenresController < ApplicationController
  def new
  end

  def create
  end

  def index
    @genre = Genre.all
  end

  def show
    @genre = Genre.find params[:id]
    @work = Work.all
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
