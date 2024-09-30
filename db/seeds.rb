# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

countries = %w[Brasil Namíbia Geórgia].map do |country_name|
  Country.create(name: country_name)
end

genres = %w[Ação Comédia Drama Horror].map do |genre_name|
  Genre.create(name: genre_name)
end

directors = %w[Zé Maria Jão Fabiana].map do |director_name|
  Director.create(name: director_name, genre: genres.sample, country: countries.sample)
end

['Um Filme', 'Outro Filme', 'Mais um filme'].each do |movie_title|
  Movie.create(title: movie_title, country: countries.sample,
                            director: directors.sample, genre: genres.sample, year: Date.today.year)
end
