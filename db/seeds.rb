countries = YAML.load_file('app/assets/countries-pt_BR.yaml').values
countries.each do |country_name|
  Country.create(name: country_name)
end

Movie.find_or_create_by!(
  title: 'The Lord of the Rings: The Fellowship of the Ring',
    year: 2001,
    synopsis: 'A meek Hobbit from the Shire and eight companions set out on a journey to destroy the powerful One Ring and save Middle-earth from the Dark Lord Sauron',
    length: 178,
    country: Country.find_or_create_by!(name: 'Estados Unidos'),
    director: Director.find_or_create_by!(
      name: 'Peter Jackson',
      birthdate: '1961-10-31',
      country: Country.find_or_create_by!(name: 'Nova Zelândia'),
      genre: Genre.find_or_create_by!(name: 'Aventura')
    ),
    genre: Genre.find_or_create_by!(name: 'Aventura')
)

Movie.last.poster.attach(
  io: File.open(File.join(Rails.root, 'app/assets/images/LOTRposter.jpg')),
  filename: 'LOTRposter.jpg'
)

Movie.find_or_create_by!(
  title: 'Harry Potter and the Prisoner of Azkaban',
    year: 2004,
    synopsis: 'Harry Potter, Ron and Hermione return to Hogwarts School of Witchcraft and Wizardry for their third year of study, where they delve into the mystery surrounding an escaped prisoner who poses a dangerous threat to the young wizard',
    length: 142,
    country: Country.find_or_create_by!(name: 'Reino Unido'),
    director: Director.find_or_create_by!(
      name: 'Alfonso Cuarón',
      birthdate: '1961-11-28',
      country: Country.find_or_create_by!(name: 'México'),
      genre: Genre.find_or_create_by!(name: 'Aventura')
    ),
    genre: Genre.find_or_create_by!(name: 'Aventura')
)

Movie.last.poster.attach(
  io: File.open(File.join(Rails.root, 'app/assets/images/HPposter.jpg')),
  filename: 'HPposter.jpg'
)

Movie.find_or_create_by!(
  title: 'Star Wars: Episode V - The Empire Strikes Back',
    year: 1980,
    synopsis: 'After the Empire overpowers the Rebel Alliance, Luke Skywalker begins his Jedi training with Yoda. At the same time, Darth Vader and bounty hunter Boba Fett pursue his friends across the galaxy',
    length: 124,
    country: Country.find_or_create_by!(name: 'Estados Unidos'),
    director: Director.find_or_create_by!(
      name: 'Irvin Kershner',
      birthdate: '1923-04-29',
      country: Country.find_or_create_by!(name: 'Estados Unidos'),
      genre: Genre.find_or_create_by!(name: 'Drama')
    ),
    genre: Genre.find_or_create_by!(name: 'Ficção científica')
)

Movie.last.poster.attach(
  io: File.open(File.join(Rails.root, 'app/assets/images/SWposter.jpg')),
  filename: 'SWposter.jpg'
)
