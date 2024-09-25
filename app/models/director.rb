class Director < ApplicationRecord
  belongs_to :country
  belongs_to :genre

  validates :name, presence: true

  has_many :movies
end
