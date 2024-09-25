class HomeController < ApplicationController
  def index
    @genres = Genre.all
    @directors = Director.all
    @movies_published = Movie.where(published: true)
    @movies_draft = Movie.where(published: false)
  end
end
