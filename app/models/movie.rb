class Movie < ApplicationRecord
  belongs_to :country
  belongs_to :genre
  belongs_to :director

  before_save do
    self.released = year <= Date.today.year
  end
end
