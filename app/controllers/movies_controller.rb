class MoviesController < ApplicationController
  def index
    @movies_draft = Movie.where(published: false)
  end

  def show
    @movie = Movie.find(params[:id])
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
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
    if @movie.update(movie_params)
      redirect_to root_path
    end
  end

  def destroy
    @movie = Movie.find(params[:id])
    if @movie.destroy
      redirect_to root_path
    end
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :year, :synopsis, :length, :country_id, :genre_id, :director_id, :published, :poster)
  end
end
