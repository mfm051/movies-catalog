class DirectorsController < ApplicationController
  def new
    @director = Director.new
  end

  def create
    @director = Director.new(director_params)
    if @director.save
      redirect_to root_path
    end
  end

  private

  def director_params = params.require(:director).permit(:name, :birthdate, :country_id, :genre_id)
end
