class Country < ApplicationRecord
  has_many :directors, dependent: :destroy
  has_many :movies, dependent: :destroy
end
