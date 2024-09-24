class MoviesController < ApplicationController
  def show
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to root_path
    end
  end

  def edit
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :year, :synopsis, :length, :country_id, :genre_id, :director_id)
  end
end
