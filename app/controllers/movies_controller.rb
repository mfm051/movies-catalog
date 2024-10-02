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
    @movie = Movie.new(movie_attributes)
    if @movie.save
      redirect_to root_path
    end
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
    if @movie.update(movie_attributes)
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

  def movie_attributes
    attributes = params.require(:movie).permit(
      :title,
      :year,
      :synopsis,
      :length,
      :director_id,
      :published,
      :poster,
      genre: :name,
      country: :name
      )
      attributes[:genre] = Genre.find_or_create_by(name: attributes[:genre][:name])
      attributes[:country] = Country.find_or_create_by(name: attributes[:country][:name])

      attributes
  end
end
