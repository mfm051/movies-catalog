class Director < ApplicationRecord
  belongs_to :country
  belongs_to :genre

  has_many :movies
end
