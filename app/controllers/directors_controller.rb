class DirectorsController < ApplicationController
  def show
    @director = Director.find(params[:id])
  end
  def new
    @director = Director.new
  end

  def create
    @director = Director.new(director_params)
    if @director.save
      redirect_to root_path
    end
  end

  def edit
    @director = Director.find(params[:id])
  end

  def update
    @director = Director.find(params[:id])
    if @director.update(director_params)
      redirect_to root_path
    end
  end

  private

  def director_params = params.require(:director).permit(:name, :birthdate, :country_id, :genre_id)
end
