class Kata < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true

  has_many :belts
end
