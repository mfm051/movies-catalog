class GenresController < ApplicationController
  def show
    @genre = Genre.find(params[:id])
  end
  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new(genre_params)
    if @genre.save
      redirect_to root_path
    end
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.find(params[:id])
    if @genre.update(genre_params)
      redirect_to root_path
    end
  end

  def destroy
    @genre = Genre.find(params[:id])
    if @genre.destroy
      redirect_to root_path
    end
  end

  private

  def genre_params = params.require(:genre).permit(:name)
end
