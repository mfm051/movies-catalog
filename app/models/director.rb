class Director < ApplicationRecord
  belongs_to :country
  belongs_to :genre

  validates :name, presence: true, uniqueness: true
  before_validation :standardize_name

  has_many :movies, dependent: :destroy

  private

  def standardize_name
    self.name = name.titleize
  end
end
