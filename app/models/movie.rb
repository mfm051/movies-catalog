class Movie < ApplicationRecord
  has_one_attached :poster

  belongs_to :country
  belongs_to :genre
  belongs_to :director

  validates :title, presence: true

  before_validation :determine_released

  private

  def determine_released
    self.released = year <= Date.today.year
  end
end
