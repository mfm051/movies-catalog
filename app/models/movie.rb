class Movie < ApplicationRecord
  belongs_to :country
  belongs_to :genre
  belongs_to :director
end
