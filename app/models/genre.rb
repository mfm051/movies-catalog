class Genre < ApplicationRecord
  has_many :movies, dependent: :destroy
  has_many :directors, dependent: :destroy

  validates :name, presence: true, uniqueness: true

  before_validation :standardize_name

  private

  def standardize_name
    self.name = name.titleize
  end
end
