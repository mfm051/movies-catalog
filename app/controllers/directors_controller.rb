class DirectorsController < ApplicationController
  def show
    @director = Director.find(params[:id])
  end
  def new
    @director = Director.new
  end

  def create
    @director = Director.new(director_attributes)

    if @director.save
      redirect_to root_path
    end
  end

  def edit
    @director = Director.find(params[:id])
  end

  def update
    @director = Director.find(params[:id])

    if @director.update(director_attributes)
      redirect_to root_path
    end
  end

  def destroy
    @director = Director.find(params[:id])
    if @director.destroy
      redirect_to root_path
    end
  end

  private

  def director_attributes
    attributes = params.require(:director).permit(:name, :birthdate, :country_id, genre: :name)
    attributes[:genre] = Genre.find_or_create_by(name: attributes[:genre][:name])

    attributes
  end
end
