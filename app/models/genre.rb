class Genre < ApplicationRecord
  has_many :movies, dependent: :destroy
  has_many :directors, dependent: :destroy

  validates :name, presence: true
end
